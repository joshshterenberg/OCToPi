#!/bin/bash

cd /eos/user/j/jshteren/OCToPi

if [ ! -d "venv" ]; then
    python3 -m venv venv
fi
. venv/bin/activate

python3 -m pip install --upgrade pip
python3 -m pip install torch==2.1.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
python3 -m pip install pytorch-metric-learning
python3 -m pip install torch_geometric
#python3 -m pip install torch-cluster -f https://data.pyg.org/whl/torch-2.1.0+cpu.html

python3 -m pip install uproot
python3 -m pip install matplotlib
python3 -m pip install numpy
python3 -m pip install scipy

echo 'Running File...'

#python3 /eos/user/j/jshteren/OCToPi/mlp.py
#python3 /eos/user/j/jshteren/OCToPi/gnn.py
python3 /eos/user/j/jshteren/OCToPi/test.py

echo 'Finished'
deactivate
