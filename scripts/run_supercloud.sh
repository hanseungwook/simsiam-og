#!/bin/bash

module load anaconda/2021a

for lr in 0.05 0.1 0.15 0.2
do
port=
python main_simsiam.py --submit --server=sc --arg_str="--batch-size=256 --lr ${lr} --world-size 1 --rank 0 --fix-pred-lr"
done