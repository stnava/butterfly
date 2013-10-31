butterfly
=========

use a simple multi-start procedure to overcome bad initialization for image registration

![b1](https://raw.github.com/stnava/butterfly/master/butterfly-3.jpg?raw=true)
![b2](https://raw.github.com/stnava/butterfly/master/butterfly-15.jpg?raw=true)
![b3](https://raw.github.com/stnava/butterfly/master/ms_result.jpg?raw=true)

run [multistart.sh](https://github.com/stnava/butterfly/blob/master/multistart.sh) in this directory.

```
antsAffineInitializer 2 butterfly-3.jpg butterfly-15.jpg  butter.mat  30 0.5

antsApplyTransforms -d 2 -i butterfly-15.jpg -o test.nii.gz -t butter.mat -r butterfly-3.jpg

ConvertImagePixelType test.nii.gz ms_result.jpg 1 
````

antsAffineInitializer performs a few searches around a starting point ... 

in this case, it searches in 30 degree increments over 1/2 a radian.