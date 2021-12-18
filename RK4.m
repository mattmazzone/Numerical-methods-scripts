## Copyright (C) 2021 Matteo
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} RK4 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Matteo <Matteo@DESKTOP-F9QPMB0>
## Created: 2021-12-17

function  [t, w] = RK4(f, to, yo, h, n)
w=[yo];
t=[to];
for i = 1:n
k1=f(t(i),w(i));
k2=f(t(i)+h/2,w(i)+k1*h/2);
k3=f(t(i)+h/2,w(i)+k2*h/2);
k4=f(t(i)+h,w(i)+k3*h);
w=[w ; w(i)+h/6*(k1+2*k2+2*k3+k4)];
t=[t ; t(i)+h];
endfor

endfunction
