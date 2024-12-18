function y = ouverture (x,s)
y=dilatation(erosion(x,s),s);
