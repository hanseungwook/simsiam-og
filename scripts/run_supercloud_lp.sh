#!/bin/bash

module load anaconda/2021a

for lr in 30 10 1 0.2 0.1
do
python main_lincls.py --submit --server=sc --arg_str="--batch-size=256 --lr ${lr} --world-size 1 --rank 0 --pretrained $1"
done