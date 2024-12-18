function Y = erosion (X,se) 

Y=conv2(X,se,"same");
Y= Y==sum(se(:));

%resulttat est 0 si un pixel de se == 0 mais ce qui nus intéresse c'est
%plutot les pixels à 1 
%don on verifie pour chaque piixel que img*se == sum(se(:)),qui est valise
%seuleement s se est totalement inclus dans img
