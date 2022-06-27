function p = part3()
  f = imread("cameraman.tif");
  [x y] =size(f);
  
  imagesc(f);
  colormap(gray);
  I = imcrop(f,[x y 8 8]);
  
  imshow(f,[]);
  d = dct2(I);
  
  d(abs(d) < 5) = 0;
  
 
endfunction
