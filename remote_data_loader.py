import paramiko
import numpy as np
from io import BytesIO

def create_ssh_client(server, port, user, password):
    client = paramiko.SSHClient()
    client.load_system_host_keys()
    client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    client.connect(server, port, user, password)
    return client

def fetch_data(ssh_client, remote_path, start_idx, end_idx):
    signal_data_list = []
    pileup_data_list = []

    for i in range(start_idx, end_idx):
        with ssh_client.open_sftp() as sftp:
            with sftp.file(f"{remote_path}/signal_data_{i}.npy", 'r') as f:
                signal_data = np.load(BytesIO(f.read()))
            with sftp.file(f"{remote_path}/pileup_data_{i}.npy", 'r') as f:
                pileup_data = np.load(BytesIO(f.read()))
        
        signal_data_list.append(signal_data)
        pileup_data_list.append(pileup_data)

    return np.stack(signal_data_list), np.stack(pileup_data_list)
