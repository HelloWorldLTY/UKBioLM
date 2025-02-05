#!/bin/bash
export TRAIN_FILE=/home/tl688/scratch/ukbb_allinfo_contras_train10000000.csv
export TEST_FILE=/home/tl688/scratch/ukbb_allinfo_contras_test10000000.csv

python run_mlm_contras.py \
    --model_name_or_path "zhihan1996/DNABERT-2-117M" \
    --train_file $TRAIN_FILE \
    --validation_file $TEST_FILE \
    --per_device_train_batch_size 128 \
    --per_device_eval_batch_size 8 \
    --line_by_line \
    --do_train \
    --do_eval \
    --num_train_epochs 1.0 \
    --save_steps 1000 \
    --trust_remote_code True \
    --overwrite_output_dir \
    --output_dir ./dnabert2_contras_large