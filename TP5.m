clear all
close all

ref=imread("Frames/ref.jpg");
ref=double(ref);
s1=0.15;
se=ones(3);
%se=[0,1,0;1,1,1;0,1,0];

for i=71:200
    file=['Frames/image',num2str(i),'.jpg'];
    I=imread(file); I=rgb2gray(I); I=double(I);
    
    %detection
    I1=abs(I-ref);
    
    %conseillé d'utilisé un pourcentage pour le seuil
    %comme ca le seuil est inddependant de notre imaage
    %si on a un max trés bas ca va s'adapter automatiquement 
    I2 = I1 > s1*max(I1(:));

    I2=ouverture(I2,se);
    I2=fermeture(I2,se);


    %pour calculer le nomre de reion on va utiliser bwlabel ==> doc
    
    [I2,n]=bwlabel(I2);
	imagesc(I2/255);colormap(gray)


    s=zeros(n,1); %stocker la taille 
    c=zeros(n,2); %pour stocker les coordonnées x,y
    for i=1:n 
        [y,x ]=find(I2==i);
        c(i,:)=[mean(x),mean(y)];
        s(i)=length(x);
    end
    hold on;
    plot(c(:,1),c(:,2),'or','LineWidth',3);


    pause(0.1);
end
    






%quand on fait es ffiltres oon doit avoir toujours des tailles impairs
%au lieu  de definir la taillle du filtre,, on defiinit la moitie n et la
%taillle sera 2n+1
