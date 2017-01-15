function img = motion(img)
h=fspecial('motion',15,20);
if size(img,3) == 3
    red = imfilter(img(:,:,1),h);
    green = imfilter(img(:,:,2),h);
    blue = imfilter(img(:,:,3),h);
    img = cat(3,red,green,blue);
else
    img = imfilter(img,h);
end

end