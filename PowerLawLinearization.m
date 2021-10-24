## Author: Ruben <Ruben@DESKTOP-S1SVQ4F>
## Created: 2021-10-23

## The output is a function of type y = a0 * x ^ a1

function [a0,a1] = PowerLawLinearization (xValues, yValues)
  
  ## First we calculate the natural log for each point
  for i = 1:length(xValues)
    xValues(i) = log(xValues(i));
    yValues(i) = log(yValues(i));
  endfor
  
  ## Then we use those values to get the linear regression
  [a0,a1] = LinearRegression(xValues, yValues);
  
  ## Then we do e^a0 to reverse. 
  a0 = exp(a0);
  
endfunction
