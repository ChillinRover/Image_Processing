function img = wienerFilter(img)
if size(img,3) == 3
    red = wiener2(img(:,:,1),[5 5]);
    green =wiener2(img(:,:,2),[5 5]);
    blue = wiener2(img(:,:,3),[5 5]);
    img = cat(3,red,green,blue);
else
    img = wiener2(img);
end
end
