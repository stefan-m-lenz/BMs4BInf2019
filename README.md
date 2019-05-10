
# Examples for using deep Boltzmann machines on bioinformatical data sets

This repository showcases several examples for using deep Boltzmann machines (DBMs) employing the Julia package [BoltzmannMachines](https://github.com/stefan-m-lenz/BoltzmannMachines.jl). The examples are implemented as IJulia notebooks, which are best viewed in the Jupyter Notebook Viewer (click the links below). We show examples for:

* training a [multimodal DBM](https://nbviewer.jupyter.org/github/stefan-m-lenz/BMs4BInf2019/blob/f125483dd00a497329cfd243ae5c7e6baa7d093a/multimodal_example/MultimodalDBMExample.ipynb) on a data set with SNP and gene expression data from patients with acute myeloid leukemia
* comparing [DBMs and conditional generative adversarial networks](https://nbviewer.jupyter.org/github/stefan-m-lenz/BMs4BInf2019/blob/f125483dd00a497329cfd243ae5c7e6baa7d093a/cgan_vs_dbm_example/cganvsdbm.ipynb) with respect to conditional sampling on a data set with artificial gene expression and SNPs patterns
* comparing the dimensionality reduction with [DBMs, PCA and t-SNE](https://nbviewer.jupyter.org/github/stefan-m-lenz/BMs4BInf2019/blob/f125483dd00a497329cfd243ae5c7e6baa7d093a/pca_tsne_dbm_example/pca_tsne_dbm.ipynb) on an single-cell RNA sequencing data set of neural cells.
