% Tentukan fungsi f(x,y)
f = @(x,y) 2*x^3 + 12*x^2 - 20*x + 8.5;

% Tentukan nilai awal
x0 = 0;
y0 = 0;

% Tentukan nilai x yang dicari
x1 = 1;

% Tentukan langkah h
h = 0.5;

% Hitung nilai y(1) menggunakan metode Runge-Kutta orde 3
k1 = h * f(x0, y0);
k2 = h * f(x0 + h/3, y0 + k1/3);
k3 = h * f(x0 + 2*h/3, y0 + 2*k2/3);
k4 = h * f(x0 + h, y0 + k1/4 + 3*k3/4);
y1 = y0 + (k1 + 3*k3)/4 + k4/2;

% Tampilkan hasil
fprintf('y(1) = %.4f\n', y1);
