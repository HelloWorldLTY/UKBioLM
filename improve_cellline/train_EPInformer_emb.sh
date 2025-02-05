#!/bin/bash
python train_EPInformer_emb3f.py --cell K562 --model_type EPInformer-PE-Activity-HiC --expr_assay RNA --batch_size 16 --extra_emb "./scelmo_dnabert2_updateweight_k562.pkl" --extra_emb_len 3072 --cuda --use_pretrained_encoder --save_path './new/pretrain_dnabert2_3fscelmodnabert2_updatenew1000_RNA_k562'
