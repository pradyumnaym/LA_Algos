n = int(input("Enter n : "));
m = int(input("Enter m :"));
A = zeros(m,n);
for i=1:m
    for j=1:n
        A(i,j) = int(input("enter element "+string(i)+","+string(j)+" : "));
    end
end
 
