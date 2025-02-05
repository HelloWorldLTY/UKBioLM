#!/bin/bash

export TRAIN_FILE=/home/tl688/scratch/ukbb_allinfo_13000000_train_new.csv #path for the training data
export TEST_FILE=/home/tl688/scratch/ukbb_allinfo_13000000_test_new.csv #path for the testing data


python run_mlm.py \
    --model_name_or_path "zhihan1996/DNABERT-2-117M" \
    --train_file $TRAIN_FILE \
    --validation_file $TEST_FILE \
    --per_device_train_batch_size 256 \
    --per_device_eval_batch_size 8 \
    --line_by_line \
    --do_train \
    --do_eval \
    --num_train_epochs 1.0 \
    --save_steps 1000 \
    --trust_remote_code True \
    --learning_rate 5e-4 \
    --output_dir ./dnabert2_ukbball_5e4/ \
    --save_safetensors False