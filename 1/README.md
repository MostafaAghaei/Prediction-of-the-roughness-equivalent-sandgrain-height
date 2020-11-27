## Description
Use `loadDNN.ipynb` and `loadGPR.ipynb` to predict k<sub>s</sub> for a rough wall, using `jupyter-notebook` application. These codes load the trained DNN and GPR networks, which are stored in `DNN_best.sav` and `GPR_best.sav` respectively.

The inputs are surface geometrical parameters and are written in `Surface_features.csv`. This file is loaded by ML networks.
Please refer to our paper [Aghaei Jouybari, M. Yuan, J. Brereton, G.J. and Murillo, M.S. (2019) Data-driven prediction of the equivalent sand-grain height in rough-wall turbulent flows. arXiv preprint](https://arxiv.org/abs/2002.01515) for percise definitions of the input parameters.

`Surface_features.csv` also contains the true k<sub>s</sub> values to estimate the prediction error. Put k<sub>s</sub>=0 if it is not known a priori.

In the present file, surfaces with lable

- <i>DNS</i> are from Aghaei Jouybari et al. (JFM, 2020, "Data-driven prediction of the equivalent sand-grain height in rough-wall turbulent flows")
- <i>EXP</i> are from Flack et al. (2016, 2018, 2019) (See Aghaei Jouybari et al. 2020 for the details)
- <i>DNSF</i> are from Forooghi et al. (JFE, 2017, "Toward a universal roughness correlation").

#### Folder Cal_stat
Please consult with this folder if you do not have the geometrical parameters of the surface as tabulated in `Surface_features.csv`, and you intend to extract them.
