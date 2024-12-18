function Y = dilatation (X,se)

Y=conv2(X,se,"same");
Y=Y>0;

%le resultat egale un si qu'un seul pixel est egale à 1 don il suffit d'avoir lle resultat de la convolution 
%superieur seuleement à zero 