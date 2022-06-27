
function p = part2()
  
  f = imread("cameraman.tif");
  imagesc(f);
  colormap(gray);
  
  d = dct2(f); %%to dct ths eikonas
  
  d(abs(d) < 5) = 0; %timh 0 stous syntelestes me F < 5
  K = idct2(d); %pairnw antistixo dct
  
  t = uint8(f);%metatropi se uint8(convert image to 8bit unsigned integers
  imshow(t)
  
 %PSNR(Peak signal-to-noise ratio) 
  %imnoise(image, ,peak signal value)
  N = imnoise(t,'salt & pepper', 0.05);
  [peaksnr, snr] = psnr(N, t);
  
  fprintf('\n The Peak-SNR value is %0.4f', peaksnr);
  
  % The higher the PSNR, the better the quality of the compressed

  F10();
  F20();
endfunction

function p = F10()
  f = imread("cameraman.tif");
  imagesc(f);
  colormap(gray);
  
  d = dct2(f); %%to dct ths eikonas
  
  d(abs(d) < 10) = 0; %timh 0 stous syntelestes me F < 5
  K = idct2(d); %pairnw antistixo dct
  
  t = uint8(f);%metatropi se uint8(convert image to 8bit unsigned integers
  imshow(t)
 %PSNR(Peak signal-to-noise ratio) 
  %imnoise(image, ,peak signal value)
  N = imnoise(t,'salt & pepper', 0.05);
  [peaksnr, snr] = psnr(N, t);
  
  fprintf('\n The Peak-SNR value is %0.4f', peaksnr);
  
  % The higher the PSNR, the better the quality of the compressed
 
endfunction

function p = F20()
   f = imread("cameraman.tif");
  imagesc(f);
  colormap(gray);
  
  d = dct2(f); %%to dct ths eikonas
  
  d(abs(d) < 20) = 0; %timh 0 stous syntelestes me F < 5
  K = idct2(d); %pairnw antistixo dct
  
  t = uint8(f);%metatropi se uint8(convert image to 8bit unsigned integers
  imshow(t)
  %PSNR(Peak signal-to-noise ratio) 
  %imnoise(image, ,peak signal value)
  N = imnoise(t,'salt & pepper', 0.05);
  [peaksnr, snr] = psnr(N, t);
  
  fprintf('\n The Peak-SNR value is %0.4f', peaksnr);
  
  % The higher the PSNR, the better the quality of the compressed
  
endfunction

 