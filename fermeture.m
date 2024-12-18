function y =  fermeture (x,s)
   y=erosion(dilatation(x,s),s);