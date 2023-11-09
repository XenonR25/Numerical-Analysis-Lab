function retval = Matrix ()
  A = input("Matrix A:");
  B = input("Matrix B:");
  C = max(max(A));

  fprintf("The highest value is:- %d\n",C);

  if size(A,2) == size(B,1)
  M = A*B;
  disp(M);
 else
  fprintf("Matrix multiplication could not be done\n");
  end

endfunction
