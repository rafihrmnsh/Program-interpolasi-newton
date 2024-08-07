clc;
clear;
disp('Program interpolasi newton');
disp('==========================');
disp(' ');

n = input('Input jumlah titik = ');
x = zeros(1, n);
F = zeros(1, n);

%Input nilai x dan F%
for i =1:n
  x(i) = input(['Input nilai x(', num2str(i), '): ']);
  F(i) = input(['Input nilai F(', num2str(i), '): ']);
end

disp(' ');
z = input('Input nilai yang akan diinterpolasi (z) = ');

eps = 0;
b = zeros(1,n);
b(1) = F(1);

tic
pbagi = b(1);
factor = 1;

for i = 2:n
  b(i) = F(i);
  for j = i-1:-1:1
    b(j) = (b(j+1) - b(j)) / (x(i) - x(j));
  end

  factor = factor * (z - x(i-1));
  suku = b(1) * factor;
  pbagi = pbagi + suku;

  if (abs(suku) <= eps)
    break;
  end
end

interpolasi = pbagi;

disp(' ');
disp(['Jadi nilai taksirannya adalah ' num2str(interpolasi)]);
