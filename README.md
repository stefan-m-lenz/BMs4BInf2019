
# An example for training a multimodal DBM on a bioinformatical data set

In the example presented here, a multimodal DBM is trained on genetic data from patients with acute myeloid leukemia (AML). The examined data set consists of data from 308 patients with SNP measurements, 319 patients with gene expression measurements and 26 patients with both measurements. For training the multimodal DBM, the [BoltzmannMachines](https://github.com/stefan-m-lenz/BoltzmannMachines.jl) Julia package is employed. It is shown how the resulting model can be used for dimensionality reduction.

[The example is implemented as an IJulia notebook, best viewed in the Jupyter Notebook Viewer.](https://nbviewer.jupyter.org/github/stefan-m-lenz/BMs4BInf2019/blob/master/MultimodalDBMExample.ipynb)

The data that is necessary for executing the example code is attached. It has been extracted from the following sources:

[1] Hieke-Schulz, S. (2016). *SNP data from a clinical cohort of acute myeloid leukemia patients*. Harvard Dataverse.
https://doi.org/10.7910/DVN/JUMDLX

[2] Hieke, S. et. al. (2016). *Integrating multiple molecular sources into a clinical risk prediction signature by extracting complementary information*. BMC Bioinformatics. https://doi.org/10.1186/s12859-016-1183-6