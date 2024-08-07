f_input = @(x) (x^3 + 2*x^2 + x + 1) / (sqrt(x^2 + 1) + log(x + 1));

a = input('Masukkan batas bawah integral: ');
b = input('Masukkan batas atas integral: ');

n = input('Masukkan jumlah iterasi atau subinterval: ');

h = (b - a) / n;


x = linspace(a, b, n+1);
y = arrayfun(f_input, x);
I = (h/2) * sum(y(1:end-1) + y(2:end));

for i = 1:n
    xi = [x(i), x(i+1), x(i+1), x(i), x(i)];
    yi = [0, 0, y(i+1), y(i), 0];
    disp(['Iterasi ', num2str(i), ', Hasil Sementara = ', num2str(sum(yi))]);
end

I_true = quad(f_input, a, b);

error = abs(I_true - I);

disp(['Hasil Integral Trapesium = ', num2str(I)]);
disp(['Hasil Integral Sebenarnya = ', num2str(I_true)]);
disp(['Galat = ', num2str(error)]);

figure;
hold on;

for i = 1:n
    xi = [x(i), x(i+1), x(i+1), x(i), x(i)];
    yi = [0, 0, y(i+1), y(i), 0];
    patch(xi, yi, 'r', 'faceAlpha', 0.3);
end

x1 = linspace(a, b, 150);
f1 = arrayfun(f_input, x1);
plot(x1, f1, 'b', 'LineWidth', 2);
axis tight;

grid on;
xlabel('x');
ylabel('y');
title('Metode Trapesium untuk Integral');

