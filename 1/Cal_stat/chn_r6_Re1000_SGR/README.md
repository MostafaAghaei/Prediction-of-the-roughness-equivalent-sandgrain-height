# Description
This folder stores the surface height distribution.

<b>`grd_res.txt`</b> contains grid resoultion in the streamwise (n<sub>i</sub>) and spanwise (n<sub>k</sub>) directions. The grid should be uniform in both directions. In `grd_res.txt` the first row is n<sub>i</sub> and the second row is n<sub>k</sub>.

<b>`Surface.txt`</b> Contains distribution of the surface height. The file shall be written as
```Matlab
loop i=1,ni
  loop k=1,nk
     x(i),z(k),hei(i,k)
  end
end
```

where, `x`, `z` and `hei` are, respectively, the streamwise coordinate, the spanwise coordinate and roughness height function.

<b>`ks.txt`</b> contains the true value of k<sub>s</sub> (to be used in error analysis). Put 0 if not known a priori.

<b>`Surface.png`</b> shows the height distribution and is produced by `../Stat_Plot.m`.
