figure(1); clf;
n = 0:6; 
x = [1,-2,4,6,-5,8,10];
%
[xa1,na1] = sigshift(x,n,-2);
[xa2,na2] = sigshift(x,n,4);
[xa,na] = sigadd(3*xa1,na1,xa2,na2);
[xa,na] = sigadd(xa,na,-2*x,n);
subplot(2,3,1);
stem(na,xa); grid on; 
title('Señal ejercicio 2.a');
xlabel('n'); ylabel('xa(n)');
%
%
[xb1,nb1] = sigshift(x,n,-5);
[xb2,nb2] = sigshift(x,n,-4);
[xb,nb] = sigadd(5*xb1,nb1,xb2,nb2);
[xb,nb] = sigadd(xb,nb,3*x,n);
subplot(2,3,2);
stem(nb,xb); grid on; 
title('Señal ejercicio 2.b');
xlabel('n'); ylabel('xb(n)');
%
%
[xc1,nc1] = sigshift(x,n,-4);
[xc2,nc2] = sigshift(x,n,1);
[xc3,nc3] = sigfold(x,n); [xc3,nc3] = sigshift(xc3,nc3,2);
%
[xc4,nc4] = sigmult(xc1,nc1,xc2,nc2);
[xc5,nc5] = sigmult(xc3,nc3,x,n);
%
[xc,nc] = sigadd(xc4,nc4,xc5,nc5);
subplot(2,3,3);
stem(nc,xc); grid on; 
title('Señal ejercicio 2.c');
xlabel('n'); ylabel('xc(n)');
%
%
nd0 = -10:10; 
xd0 = [1,-2,4,6,-5,8,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
%
[xd1,nd1] = sigshift(xd0,nd0,-1);
[xd1,nd1] = sigmult(2*exp(0.5*nd1),nd1,xd1,nd1);
[xd2,nd2] = sigshift(xd0,nd0,2);
[xd2,nd2] = sigmult(cos(0.1*pi*nd2),nd2,xd2,nd2);
[xd,nd] = sigadd(xd1,nd1,xd2,nd2);
subplot(2,3,4);
stem(nd,xd); grid on; 
title('Señal ejercicio 2.d');
xlabel('n'); ylabel('xd(n)');
%
%
xe = zeros(1,length(x));
for k = 1:5
    xeaux = n .* sigshift(x,n,k);
    xe = xe + xeaux;
end
subplot(2,3,5);
stem(n,xe); grid on; 
title('Señal ejercicio 2.e');
xlabel('n'); ylabel('xe(n)');
    