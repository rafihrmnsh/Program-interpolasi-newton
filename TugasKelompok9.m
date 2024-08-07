dydx = @(x,y) 4*x*y+y^2+cos(x);

x0=1;
y0=1;

h1=0.3;
h2=0.7;

num_iterasi=5;

disp('Metode Euler dengan h = 0.3:');

x1=x0;
y1=y0;
for i = 1:num_iterasi
    y1=y1+h1*dydx(x1,y1);
    x1=x1+h1;
    disp(['iterasi',num2str(i),':x=',num2str(x1),',y=',num2str(y1)]);
end
disp('Metode euler dengan h=0.7;');
x2=x0;
y2=y0;
for i = 1:num_iterasi
    y2=y2 + h2 * dydx(x2,y2);
    x2=x2+h2;
    disp (['iterasi',num2str(i),'x=',num2str(x2),',y=',num2str(y2)]);
end