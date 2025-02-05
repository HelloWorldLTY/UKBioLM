export TRAIN_FILE=/home/tl688/scratch/ukbb_allinfo_LDscore_train.csv
export TEST_FILE=/home/tl688/scratch/ukbb_allinfo_LDscore_test.csv

# export TRAIN_FILE=/home/tl688/scratch/ukbb_allinfo_13000000_train_new.csv
# export TEST_FILE=/home/tl688/scratch/ukbb_allinfo_13000000_test_new.csv

python run_mlm_ld.py \
    --model_name_or_path "zhihan1996/DNABERT-2-117M" \
    --train_file $TRAIN_FILE \
    --validation_file $TEST_FILE \
    --per_device_train_batch_size 512 \
    --per_device_eval_batch_size 8 \
    --line_by_line \
    --do_train \
    --do_eval \
    --num_train_epochs 5.0 \
    --save_steps 1000 \
    --trust_remote_code True \
    --learning_rate 5e-4 \
    --output_dir /home/tl688/scratch/dnabert2_ukbball_10000000_5e4_LD_moreepoch \
    --save_safetensors False