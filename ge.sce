disp("Name: Pradyumna YM")
disp("SRN:  PES1201700986")
a=input("enter the Matrix A: ")
 [m,n]=size(a)
[v,pivot]=rref(a)
disp(pivot,"pivots in U")
cs=a(:,pivot)
disp(cs,"Column space=")
rs=a(:,pivot)'
disp(rs,"Row space=")
null1= kernel(a)
disp(null1,"Null space=")
ln=kernel(a')
disp(ln,"Left null space=")
r=length(pivot)
disp(r,"rank=")
