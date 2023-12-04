import numpy as np
import uproot
import logging
from tqdm import tqdm
from dataclasses import dataclass
from typing import Tuple
import fire
import os

# Configure logging to display messages in the notebook
logging.basicConfig(level=logging.INFO, handlers=[logging.StreamHandler(), logging.FileHandler('logfile.log')])
logger = logging.getLogger()
logger.addHandler(logging.StreamHandler())

@dataclass
class Dataset:
    n_events: int
    dim: Tuple[int, int]
    signal_file: str
    pile_up_file: str
    save: bool

    def __call__(self):
        try:
            load = self._load()
            if load:
                self.root_to_numpy()
        except Exception as e:
            logging.error(f"Load failed: {e}")

        if self.save:
            self._save()

    def __len__(self):
        return self.n_events

    def _load(self):
        self.signal_uproot = uproot.open(self.signal_file)
        self.pile_up_uproot = uproot.open(self.pile_up_file)
        return True
    
    def _save(self):
        logging.info(f'saving files')
        np.save(f'{os.getcwd()}/signal.npy', self.signal_uproot)
        np.save(f'{os.getcwd()}/pile_up.npy', self.signal_uproot)

    def root_to_numpy(self):
        logging.info(f'loading file {self.signal_file}')
        self.signal_tensor = np.stack([self.signal_uproot[f'{i};1'].values for i in tqdm(range(self.n_events))])

        logging.info(f'loading file {self.pile_up_file}')
        self.pileup_tensor = np.stack([self.pile_up_uproot[f'{i};1'].values for i in tqdm(range(self.n_events))])

        return True

    def preprocess(self, saturation: int, new_dim: Tuple[int, int]) -> None:
        logging.info('scaling')
        self.signal_tensor_scaled = Dataset.scale(self.signal_tensor, saturation, self.dim)
        self.pileup_tensor_scaled = Dataset.scale(self.pileup_tensor, saturation, self.dim)

        logging.info('re-sizing')
        self.signal_tensor_resized = Dataset.resize(self.signal_tensor_scaled, self.n_events, new_dim)
        self.pileup_tensor_resized = Dataset.resize(self.pileup_tensor_scaled, self.n_events, new_dim)

    @property
    def signal(self) -> np.ndarray:
        if hasattr(self, 'signal_tensor_resized'):
            return self.signal_tensor_resized
        elif hasattr(self, 'signal_tensor_scaled'):
            return self.signal_tensor_scaled
        else:
            return self.signal_tensor

    @property
    def pile_up(self) -> np.ndarray:
        if hasattr(self, 'pileup_tensor_resized'):
            return self.pileup_tensor_resized
        elif hasattr(self, 'pileup_tensor_scaled'):
            return self.pileup_tensor_scaled
        else:
            return self.pileup_tensor


    @staticmethod
    def resize(input: np.ndarray, n_event: int, dim: Tuple[int, int]) -> np.ndarray:
        output = np.resize(input, (n_event, dim[0], dim[1])).astype('float')
        return output

    @staticmethod
    def scale(input: np.ndarray, saturation: float, dim: Tuple[int, int]) -> np.ndarray:

        sf = saturation
        all_events = input
        shape = all_events.shape[0]
        all_events_flat = all_events.flatten()
        saturated = np.where(all_events_flat > sf)
        all_events_flat[saturated] = sf
        all_events = all_events_flat.reshape((shape, dim[0], dim[1]))
        scale_factor = 1. / sf
        output = all_events * scale_factor
        return output


if __name__ == '__main__':
   fire.Fire(Dataset)