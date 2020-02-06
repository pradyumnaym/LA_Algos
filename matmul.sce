n = int(input("Enter n : "));
p = int(input("Enter p : "));
m = int(input("Enter m :"));
A = zeros(n,p);
B = zeros(p,m);
disp("Enter elements of A :\n")
for i=1:n
    for j=1:p
        A(i,j) = int(input("enter element "+string(i)+","+string(j)+" : "));
    end        
end
disp("Enter elements of B :\n")
for i=1:p
    for j=1:m
        B(i,j) = int(input("enter element "+string(i)+","+string(j)+" : "));
    end        
end
C=zeros(n,m);
for i=1:n
  for j=1:m
     //C(i,j)=0;
     for k=1:p
        C(i,j) = C(i,j)+A(i,k)*B(k,j)
        end
    end
end
disp(A,"A = ")
disp(B,"B = ")
disp(C,"A*B = ")
disp(A*B,"Actual : ")
disp("Name :- Pruthvish \nSrn :- PES1201701629")
