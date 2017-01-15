function medianImage = medianFilter(img)
if size(img,3) == 3
    red = medfilt2(img(:,:,1),[4 4]);
    green = medfilt2(img(:,:,2),[4 4]);
    blue = medfilt2(img(:,:,3),[4 4]);
    medianImage = cat(3,red,green,blue);
else
    medianImage = medfilt2(img);
end

end