import numpy as np
import uproot
import logging
from tqdm import tqdm
from dataclasses import dataclass
from typing import Tuple, Optional
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
    start_idx: Optional[int] = None
    end_idx: Optional[int] = None

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
        signal_keys = self.signal_uproot.keys()
        pile_up_keys = self.pile_up_uproot.keys()

        if self.start_idx is None and self.end_idx is None:
            self.start_idx = 0
            self.end_idx = self.n_events
        
        selected_signal_keys = signal_keys[self.start_idx:self.end_idx]
        selected_pile_up_keys = pile_up_keys[self.start_idx:self.end_idx]

        self.signal_tensor = np.stack([self.signal_uproot[key].values for key in tqdm(selected_signal_keys)])
        self.pileup_tensor = np.stack([self.pile_up_uproot[key].values for key in tqdm(selected_pile_up_keys)])

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