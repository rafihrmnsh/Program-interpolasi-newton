f = @(x)x.^2 - 7*x + 1
fzero (f, 0)
grid on
ezplot (f)