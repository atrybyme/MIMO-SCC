function Powervect = MIMO(rate)
M = 2;
%%%%%%%For RC%%%%%%%%%%%%%%
r1 = 2^rate;
Prc = r1-1;

%%%%%%%For SM%%%%%%%%%%%%%%

r2 = 2^(rate-1);

Psm = (r2 +1)/2;

%%%%%%%For SMP%%%%%%%%%%%%

r3 = 2^(rate/2);
Psmp = 2^(rate/2)-1;

%%%%%%%%%For CC%%%%%%%%%%

L = 2^rate;
h = ceil((sqrt(8*L+1)-3)/2);
Pcc = h - (h^3+3*h^2+2*h)/(6*L);



Powervect = [Prc; Psm; Psmp; Pcc];
