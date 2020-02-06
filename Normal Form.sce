disp("Name: Pradyumna YM")
disp("SRN:  PES1201700986")
disp("Enter elements of A :\n");
a=input("Enter the Matrix A")
[m,n]=size(a)
//take inputs for the matrix b
b=input("Enter the matrix B(semicolon seperated ")
disp('The Solution is:');
disp((inv((a'*a))*a')*b);  //we know that x=(a'*a)-1 *a'b
