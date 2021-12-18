function [t, w] = RK_trap(f, to, yo ,h, n)
w=[yo];
t=[to];
for i = 1:n
k1=f(t(i), w(i));
k2=f(t(i)+h, w(i)+k1*h);
w=[w ; w(i)+h/2*(k1+k2)];
t=[t ; t(i)+h];
endfor
endfunction