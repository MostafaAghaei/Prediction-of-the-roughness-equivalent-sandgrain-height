# Description
Use `loadDNN.ipynb` and `loadGPR.ipynb` to predict k<sub>s</sub> for a rough wall, using `jupyter-notebook` application. These codes load the trained DNN and GPR networks, which are stored in `DNN_best.sav` and `GPR_best.sav` respectively.

The inputs are surface geometrical parameters which are written in `Surface_features.csv`. This file is loaded by ML networks.
Please refer to our paper for percise definitions of the input parameters.

`Surface_features.csv` also contains the true `k<sub>s</sub>` values to estimate the prediction error. Put k<sub>s</sub>=0 if it is not known a priori.
