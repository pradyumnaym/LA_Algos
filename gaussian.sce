n = int(input("ENTER order n :"));
m=int(input("m:? "))
A = zeros(n,m);

disp("Enter elements of A :\n")
for i=1:n
    for j=1:m
        A(i,j) = int(input("enter element "+string(i)+","+string(j)+" : "));
    end        
end
f = 0;

if(~(n == m)) then
    disp("Matrix is singular\n");
    f = 1;
end
c = 1;
if(f == 0) then
    t = n;
    for i=1:n
        if(A(i,i) == 0) then
            for k = i+1:n
                   if(~(A(k,i) == 0))
                       for w = 1:m
                           t = A(i,w)
                           A(i,w) = A(k,w)
                           A(k,w) = t
                       end
                    end
            if(k == n) then
                f = 1;
            end
        end
      end
     if(f == 1) then
        break;
     end
   end
end
if(f == 1) then
    disp("Matrix is singular\n");
end

L = eye(n,m);

rem = 0;
if(f == 0) then
    for i = 1:n
        for k = i+1:n
            rem = A(k,i)/A(i,i);
            L(k,i) = rem;
            for j = 1:m
                A(k,j) = A(k,j) - A(i,j)*rem;
            end
        end
    end
end

disp(A,"matrix U :");
disp(L,"matrix L :")
