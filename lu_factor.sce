n = int(input("Enter n Of the matrix for GE: "));
A = zeros(n,n);
B=zeros(n,1)
L=eye(n,n)
disp("Name: Pradyumna YM")
disp("SRN: PES1201700986")
//input the array
A=input("enter the matrix A")
 
for i=1:n
    //check the array, if the pivot element exists
    if(A(i,i)==0)
        //if pivot not found,then try finding a pivot for exchange from another row
        for j=i+1:n
            if(A(j,j)~=0)
                A([i j],:) = A([j i],:)
                B([i j],:) = B([j i],:)
                if(i>1)
                    temp=L(j,i-1)
                    L(j,i-1)=L(i,i-1)
                    L(i,i-1)=temp
                end
            end
        end
    end
    for j=i+1:n
        if(A(j,i)~=0)
            mul=A(j,i)/A(i,i)
            L(j,i)=mul
            disp(mul,"a")
            B(j,1)=B(j,1)-(mul*A(i,1))
            for k=1:n
                A(j,k)=A(j,k)-(mul*A(i,k))
                
            end
        end
    end
end
disp(A,"the matrix is")
disp(L,"L is")
