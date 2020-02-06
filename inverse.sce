n = int(input("Enter n Of the matrix for GE: "));
A = zeros(n,n);
A=zeros(n,n);
B=eye(n,n);
inver=zeros(n,n);
disp("Name: Pradyumna YM")
disp("SRN: PES1201700986")
A=input("Enter The Matrix")
for i=1:n
    if(A(i,i)==0)
        for j=i+1:n
            if(A(j,j)~=0)
                A([i j],:) = A([j i],:)
                B([i j],:) = B([j i],:)
                
            end
        end
    end
    for j=i+1:n
        if(A(j,i)~=0)
            mul=A(j,i)/A(i,i)
            //disp(mul,"a")
            for k=1:n
                A(j,k)=A(j,k)-(mul*A(i,k))
                B(j,k)=B(j,k)-(mul*B(i,k))
            end
        end
    end
end
for i=1:n
    if(A(i,i)==0)
        disp("The matrix is not invertible")
        abort()
    end
end
for i=n:-1:1
    for j=(i-1):-1:1
        mul=A(j,i)/A(i,i)
        for k=1:n
                A(j,k)=A(j,k)-(mul*A(i,k))
                B(j,k)=B(j,k)-(mul*B(i,k))
        end
    end
end
for i=1:n
    mul=A(i,i)
    for k=1:n
        A(i,k)=A(i,k)/(mul)
        B(i,k)=B(i,k)/(mul)
    end
        
end
disp(B,"the inverse is")
disp(inv(AA),"the inverse using built-in function is:")

