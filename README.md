# Codes for paper: Pre-training Genomic Language Model with Human Variants for Better Understanding Functional Genomics

## Installation

We have different environments for running UKBioBERT and UKBioFormer to avoid package conflicts. Moreover, to pre-train or infer based on UKBioBERT, we also need different environments for devices with GPU as H100 or not. 

For UKBioBERT, please install the environment based on (with H100):

```
conda env create -f ukbiobert_pretrain.yml
```

For UKBioBERT, please install the environment based on (without H100):

```
conda env create -f ukbiobert_pretrain_h100.yml
```

For UKBioFormer and fine-tuning, please install the environment based on:

```
conda env create -f ukbioformer.yml
```

If you meet errors in the installation process, please check the error information, and comment the packages causing the errors and use the **update** function of conda to have a try again.

## Dataset Preparation

Our experiments need the access to different databases, including [UKBioBank](https://www.ukbiobank.ac.uk/), [GTEx](https://gtexportal.org/home/), and [ROSMAP](https://adknowledgeportal.synapse.org/Explore/Studies/DetailsPage/StudyDetails?Study=syn3219045). Since we are not allowed to share the data, please apply for the access.

To process the datasets used for pre-training, please refer the content in the folder **pretraining**. The idea is to map variants with reference sequences to generate pre-training samples.

To process the datasets used for infernece and fine-tuning, please refer the codes used in this [repo](https://github.com/shirondru/enformer_fine_tuning/tree/master), which is comprehensive and tested in our side.

## Pre-training

Please refer the codes in the folder **pretraining** for details. We recommend at least having one H100 or A100 (80GB) for pre-training.

We cannot directly share the pre-trained models due to the limitations of [UK BioBank](https://www.ukbiobank.ac.uk/media/x2gmevle/uk-biobank-ai-guidance-for-publication-july-2024-4.pdf), however, we are working on it and will propose one solution soon.

## Applications

Please refer the codes in the folder **improve_cellline**, **ukbiobert_application**, and **ukbioformer_application** for details. We recommend at least having one A40 (48GB) for fine-tuning model.

## Acknowledgement

We thank the great codes implemented by the teams including [Huggingface](https://huggingface.co/),  [grelu](https://github.com/Genentech/gReLU), [enformer_pytorch](https://github.com/lucidrains/enformer-pytorch), [borzoi_pytorch](https://github.com/johahi/borzoi-pytorch), and [performer](https://github.com/shirondru/enformer_fine_tuning/tree/master).

## Contact

Please contact Mr. Tianyu Liu if you have any questions (email: tianyu.liu@yale.edu).

## Citation

...