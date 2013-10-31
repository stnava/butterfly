
antsAffineInitializer 2 butterfly-3.jpg butterfly-15.jpg  butter.mat  30 0.5
antsApplyTransforms -d 2 -i butterfly-15.jpg -o test.nii.gz -t butter.mat -r butterfly-3.jpg
ConvertImagePixelType test.nii.gz ms_result.jpg 1 
