function m = mydct(f(x),N)
  if(0<= x <= N)
    g(x) = f(x)
  elseif(N<= x<= 2N-1)
    g(x) = f(2*N -1 -x)
  end if
  
  G = fft(x,N)
  #F =[(e**jw(1/2)+e**-jw(1/2))] G
  F = 2*N*G
endfunction


#function f = fft(g(x),N)
  #W = e**(j*(2ð/N))
  #sum[g(x),W]
#endfunction