# Instructions for pre-training UKBioBERT

We modify the codes from huggingface transformer run_mlm.py. To preprocessing the training and testing datasets, please refer the file **preprocess.ipynb**. To run the pre-training code, please use:

```
bash run_pretrain.sh
```

Please open the file to see the keywords used in the pre-training stage. 

If the user intends to try the variants of pre-training, for example, training with LD score or contrastive learning, please consider:

```
bash run_ld.sh
```

or

```
bash run_cont.sh
```

The results will be stored in the outputs folder, the default path is: "./dnabert2_ukbball_5e4/"