//madhu ks
//PES1201802478
m = int(input("Enter m :"))
n = int(input("Enter n :"))

disp("Enter elements of the matrix A : ")
A = zeros(m,n)
for i=1:m
    for j=1:n
        mprintf("Enter element %d %d :",i,j)
        A(i,j) = int(input(""))
       end
end
disp (A , 'A= ' ) ;
copyA = A
AT = A'

w = 1
colshift = 1
while(w<m && colshift<n)
       if(A(w,colshift) == 0)
        for j=w+1:n
            if(A(j,colshift)<>0)
                A([w,j],:) = A([j,w],:)
            end
        end
    end 
    if(A(w,colshift) == 0)
        colshift = colshift+1
           continue
    end
    w = w+1
    colshift = colshift+1
    for k=w:m
        A(k,:) = A(k,:) - (A(k,colshift-1)/A(w-1,colshift-1))*A(w-1,:)
    end
end
w = 0
j = 1
disp("basis of column space of A : ")
for i=1:m
    while(j<=n)
        if(A(i,j))
            disp(copyA(:,j))
            w = w+1
            j = j+1
            break
        end
        j = j+1
        
end
end
disp(w,"dimension of column space and row space : ")
disp("basis of row space of A: ")
j = 1
for i=1:m
    while(j<=n)
        if(A(i,j))
            disp(A(i,:))
            //w = w+1
            j = j+1
            break
        end
        j = j+1
        
end
end

//echA = rref(A)
echAt = rref(AT)

for i=n:-1:2
    if(A(i,i))
    A(i,:) = A(i,:)/A(i,i)
    for k=i-1:-1:1
        
        A(k,:) = A(k,:) - (A(k,i)/A(i,i))*A(i,:)
    end
    end
end

disp(A,"row reduced echelon form of A: ")


disp("Null space A: ")

for i=w+1:n
    disp(-A(:,i))
end

disp("Left null space : ")

for i=w+1:n
    disp(-AT(:,i))
end








