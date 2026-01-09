import pickle

import grelu.sequence.format

import scanpy as sc
import pandas as pd


from sklearn.metrics import r2_score
import scipy.stats
import sklearn.metrics

data_test = np.array(seq_all)[test_id,:,:]
y_test = gene_exp_train.iloc[idx_gene,test_id].values[0]

experiment='/home/tl688/scratch/tutorial_enformer_test_emb_check_new'
if not os.path.exists(experiment):
    os.makedirs(experiment)
else:
    files = glob.glob(experiment + "/*")
    for f in files:
        shutil.rmtree(f)

import grelu.data.dataset
test_dataset = grelu.data.dataset.LabeledOneHotDataset(seqs=data_test,labels=y_test, seq_len=seq_len, tasks=['pred'])

model_params = {
    'model_type':'UKBioBERT_EnformerPretrainedModel', # Type of model
    'n_tasks': 1, # Number of cell types to predict
    'crop_len':0, # No cropping of the model output
    'n_transformers': 1, # Number of transformer layers; the published Enformer model has 11
}

train_params = {
    'task':'regression', # binary classification
    'lr':5e-6, # learning rate
    'logger': 'csv', # Logs will be written to a CSV file
    'batch_size': 8,
    'num_workers': 8,
    'devices': 0, # GPU index
    'save_dir': experiment,
    'optimizer': 'adam',
    'max_epochs': 100,
    'checkpoint': True, # Save checkpoints
    'loss': 'MSE'
}

import grelu.lightning
model = grelu.lightning.LightningModel(model_params=model_params, train_params=train_params)