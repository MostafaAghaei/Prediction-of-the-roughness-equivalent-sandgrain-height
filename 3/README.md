## Description

The databse are stored in `Database` folder. It contains 46 roughness topographies and their equivalent sandgrain height. The details of simulations and roughness features are explained extensively in our paper.

It is recommended to consider surfaces with k<sub>s</sub><sup>+</sup>>50 as fully rough ones.

<b>`Automatic.m`</b> goes over all cases in `Database` and excecutes `Stat_Plot.m` on each case. The output is `Surface_features.csv`, which contains the geometrical parameters of the rough walls.

