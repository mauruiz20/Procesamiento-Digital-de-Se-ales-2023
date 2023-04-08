figure(1); clf;
m = 0:10;               % valores de m
na = -20:20;            % valores de n
xa = zeros(size(n));    % inicializar xa con ceros
for i = 1:length(m)
    [xa1,na] = impseq(2*m(i),-20,20);
    [xa2,na] = impseq(2*m(i) - 1,-20,20);
    xaux = xa1 - xa2;
    
    xa = xa + ((m(i) + 1) * xaux);
end
subplot(2,3,1);
stem(na,xa); grid on; 
title('Señal ejercicio 1.a');
xlabel('na'); ylabel('xa(na)');
%
%
nb = -20:20;            % valores de n
xb1 = nb.*nb;
xb2 = stepseq(-5,-20,20) - stepseq(6,-20,20);
xb3 = 10 * impseq(0,-20,20);
xb4 = 20.*(0.5).^(nb);
xb5 = stepseq(4,-20,20) - stepseq(10,-20,20);
subplot(2,3,2); 
stem(nb,xb); 
grid on; 
title('Señal ejercicio 1.b');
xlabel('nb'); 
ylabel('xb(nb)');
%
%
nc = 0:20;
xc1 = (0.9).^(nc);
xc2 = cos(0.2 .* nc * pi + pi/3);
xc = xc1 .* xc2;
subplot(2,3,3); 
stem(nc,xc); 
grid on; 
title('Señal ejercicio 1.c');
xlabel('nc'); 
ylabel('xc(nc)');
%
%
nd = 0:100;
xdaux = nd.^2;
xd1 = 10 * cos(0.0008 * xdaux * pi);
xd2 = randi([-1,1],size(nd)); 
xd = xd1 + xd2;
% es una señal compuesta determinística con un tono y un componente aleatorio.
subplot(2,3,4); 
stem(nd,xd); 
grid on; 
title('Señal ejercicio 1.d');
xlabel('nd'); 
ylabel('xd(nd)');
%
%
ne= 0:19;
xe1 = [1,2,3,2];
xe = xe1'* ones(1,5);
xe = (xe(:))';
subplot(2,3,5); 
stem(ne,xe); 
grid on; 
title('Señal ejercicio 1.e');
xlabel('ne'); 
ylabel('xe(ne)'); 