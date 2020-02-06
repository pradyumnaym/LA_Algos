disp("Name: Pradyumna YM")
disp("SRN:  PES1201700986")
a=input("Enter the matrix A")
[m,n]=size(a)
lam = poly(0,'lam');
x = a - lam*eye(n,n);
y = det(x);
z = roots(y);
disp("Eigen Values");
disp(z');
disp("Eigen Vector");
for i=1:length(z)
    k = a-z(i)*eye(n,n);
    kernel(k);
    disp(k(:,1));
end
