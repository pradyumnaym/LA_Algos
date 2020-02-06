m=int(input("enter m"))
n=int(input("enter n"))
p=int(input("enter p"))
//A=[1,2,3;4,5,6;7,8,9]
//B=[1,2,4;4,5,6;7,8,9]
A=zeros(m,n)
B=zeros(n,p)
for i=1:m
    for j=1:n
        A(i,j)=int(input("Enter value "+string(i)+" "+string(j)+": "))
    end
end
for i=1:n
    for j=1:p
        B(i,j)=int(input("Enter value "+string(i)+" "+string(j)+": "))
    end
end
C=zeros(m,p)
for i=1:m
    for j=1:p
        for k=1:n
            C(i,j)=C(i,j)+A(i,k)*B(k,j)
        end
    end
end
disp(C,"A*B=")
disp(gpuMult(A,B),"Acctual")
