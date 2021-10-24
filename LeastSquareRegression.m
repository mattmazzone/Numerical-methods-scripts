## Author: Ruben <Ruben@DESKTOP-S1SVQ4F>
## Created: 2021-10-23

## Make sure to input yValues as = [1;2;3;4] and not [1 2 3 4]

## returns a function of type y = a0 + a1x + a2x + ... anx and the vandermonde matrix

function [A, an] = LeastSquareRegression (aLength, xValues, yValues)
  A = [];
  
  ## Creates a matrix
  for i = 1:length(xValues)
    for j = 0:(aLength-1)
      A(i,j+1) = xValues(i)^j;
    endfor
  endfor
  
  ## Calculates an
  an = ((A'*A)\(A'*yValues));
  
endfunction
