function img = highBoost(img)
c = 0.5;
h = [0 0 0 ;0 1 0;0 0 0]+c*[-1 -1 -1;-1 8 -1;-1 -1 -1];
% Este e um exemplo de um high boost filter, que pretende realçar
% contornos(altas freqs) e manter as baixas frequencias
if size(img,3) == 3
    red = imfilter(img(:,:,1),h);
    green = imfilter(img(:,:,2),h);
    blue = imfilter(img(:,:,3),h);
    img = cat(3,red,green,blue);
else
    img = imfilter(img,h);
end

end