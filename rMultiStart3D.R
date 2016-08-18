library( ANTsR )
f = antsImageRead( "data/f.nii.gz" )
m = antsImageRead( "data/m.nii.gz" )
nout = 5
thetas = seq( from = 0, to = 360, length.out = nout )[1:(nout-1)]
mytx = "./data/best.mat"
print( thetas )
mival<-invariantImageSimilarity( f, m,
  thetas=thetas, thetas2=thetas, thetas3=thetas, metric="MI",
  localSearchIterations=20, txfn=mytx, transform="Rigid" )
print( mival )
m2f = antsApplyTransforms( f, m, transformlist=mytx )
plot( f, m2f, alpha=0.5, axis=3, nslices=20, ncolumns=10 )
