b = input("Input nilai batas atas (b) : ");
a = input("Input nilai batas bawah (a) : ");
n = input("Input nilai banyaknya pian (n) : ");

h = (b - a) / n;

disp(newline);
disp(["Menghitung x dan fx dengan banyak pian (n) = " num2str(n)]);
x = 0;
fx = 0;
luas = 0;
Integral = 0;
i = 1;

while i <= n
    x = x + h;
    disp([num2str(i) ' : ']);
    disp(["Nilai x = " num2str(x)]);
    fx = 2 * x.^3;
    disp(["Nilai f(x) = " num2str(fx)]);

    if i == n
        luas = fx;
    elseif mod(i, 2) ~= 0
        luas = 4 * fx;
    elseif mod(i, 2) == 0
        luas = 2 * fx;
    end

    disp(["luas f(x) adalah " num2str(luas)]);
    Integral = Integral + luas;
    i = i + 1;
end

disp(newline);
hasilIntegral = (h / 3) * Integral;
disp(["hasil dari integral di atas adalah " num2str(hasilIntegral)]);

