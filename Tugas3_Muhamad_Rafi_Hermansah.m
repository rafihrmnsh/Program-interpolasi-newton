% Fungsi yang ingin dicari akarnya
f = @(x) x.^3-6*x.^2 + 11.*x - 6;

% Turunan dari fungsi f(x)
df = @(x) 3*x^2-12*x + 11;

% Toleransi
tolerance = 1e-6;

% Jumlah iterasi maksimum
maxIterations = 100;

% Tebakan awal untuk akar pertama, akar kedua, dan akar ketiga
x0_1 = 0;  % Tebakan awal untuk akar pertama
x0_2 = 2;  % Tebakan awal untuk akar kedua
x0_3 = 4;   % Tebakan awal untuk akar ketiga

% Inisialisasi iterasi untuk akar pertama
x0 = x0_1;
iter = 0;

% Iterasi metode Newton-Raphson untuk akar pertama
while iter < maxIterations
    fx0 = feval(f, x0);
    dfx0 = feval(df, x0);

    if abs(dfx0) < tolerance
        error('Turunan mendekati nol. Metode Newton-Raphson tidak dapat melanjutkan.');
    end

    x1 = x0 - fx0 / dfx0;

    if abs(x1 - x0) < tolerance
        root1 = x1;  % Akar pertama ditemukan dengan toleransi yang cukup
        fprintf('Akar Pertama: %f\n', root1);
        break;
    end

    x0 = x1;
    iter = iter + 1;
end

if iter >= maxIterations
    fprintf('Metode Newton-Raphson tidak konvergen untuk akar pertama.\n');
end

% Inisialisasi iterasi untuk akar kedua
x0 = x0_2;
iter = 0;

% Iterasi metode Newton-Raphson untuk akar kedua
while iter < maxIterations
    fx0 = feval(f, x0);
    dfx0 = feval(df, x0);

    if abs(dfx0) < tolerance
        error('Turunan mendekati nol. Metode Newton-Raphson tidak dapat melanjutkan.');
    end

    x1 = x0 - fx0 / dfx0;

    if abs(x1 - x0) < tolerance
        root2 = x1;  % Akar kedua ditemukan dengan toleransi yang cukup
        fprintf('Akar Kedua: %f\n', root2);
        break;
    end

    x0 = x1;
    iter = iter + 1;
end

% Inisialisasi iterasi untuk akar ketiga
x0 = x0_3;
iter = 0;

% Iterasi metode Newton-Raphson untuk akar ketiga
while iter < maxIterations
    fx0 = feval(f, x0);
    dfx0 = feval(df, x0);

    if abs(dfx0) < tolerance
        error('Turunan mendekati nol. Metode Newton-Raphson tidak dapat melanjutkan.');
    end

    x1 = x0 - fx0 / dfx0;

    if abs(x1 - x0) < tolerance
        root3 = x1;  % Akar ketiga ditemukan dengan toleransi yang cukup
        fprintf('Akar Ketiga: %f\n', root3);
        break;
    end

    x0 = x1;
    iter = iter + 1;
end

ezplot(f)
