## Author: Ruben <Ruben@DESKTOP-S1SVQ4F>
## Created: 2021-10-23

## LinearRegression uses a list of x and y values to find an aproppriate model
## outputs a0 and a1 where y = a0 + a1x
function [a0, a1] = LinearRegression(xValues, yValues)
    m = length(xValues);
    xSum = 0;
    ySum = 0;
    
    xySum = 0;
    
    xSquaredSum = 0;
    
    for i = 1:m
      xSum += xValues(i);
      ySum += yValues(i);
      
      xySum += (xValues(i) * yValues(i));
      
      xSquaredSum += xValues(i) ^ 2;
    endfor
    
    a1 = ((m * xySum) - (xSum * ySum)) / ((m * xSquaredSum) - (xSum * xSum));
    a0 = (ySum / m) - ((a1 * xSum) / m);
endfunction

