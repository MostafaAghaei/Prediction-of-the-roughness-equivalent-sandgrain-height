## Description
Use `trainDNN.ipynb` and `trainGPR.ipynb` to train DNN and GPR networks for prediction of k<sub>s</sub>, using `jupyter-notebook` application.

The inputs are surface geometrical parameters and true k<sub>s</sub>, which are written in `Surface_features.csv`. This file is loaded by `.ipynb` codes.

In the present file, surfaces with lable

- DNS are from Aghaei Jouybari et al. (JFM, 2020, "Data-driven prediction of the equivalent sand-grain height in rough-wall turbulent flows").
- EXP are from Flack et al. (2016, 2018, 2019) (See Aghaei Jouybari et al. 2020 for the details).
- DNSF are from Forooghi et al. (JFE, 2017, "Toward a universal roughness correlation").


Please refer to our paper [Aghaei Jouybari, M. Yuan, J. Brereton, G.J. and Murillo, M.S. (2019) Data-driven prediction of 
the equivalent sand-grain height in rough-wall turbulent flows. arXiv preprint](https://arxiv.org/abs/2002.01515) for percise definitions of the input parameters.

Please consult with `../1` if you intend to compute these parameters.

These are helper codes that train ML networks based on the parameters specified in `Surface_features.csv`. They can be modified to predict k<sub>s</sub> as a function of any arbitrary geometrical parameters.
