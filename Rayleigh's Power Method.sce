disp("Name: Pradyumna YM")
disp("SRN:  PES1201700986")
a=input("Enter the Matrix A:")
x=input("Enter the approximation: ")
ax = a*x;
disp(ax);
l = max(abs(ax));    //find out the highest absolute value of the components
ax = ax/l;
previous = [0;0;0];         //since there was no previous l
while 1 do
    previous=ax;
    ax = a*ax;
    lT = max(abs(ax));
    ax = ax/lT;
    disp(ax);
    if((ax-previous)<0.0000001) //if the difference is negligible, break from the loop
        break;
    end
    T = ax;
end
disp(lT);
disp(ax);
