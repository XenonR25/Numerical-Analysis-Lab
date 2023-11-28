function retval = Elimination ()
  %applying the t=5,8,12 in the v(t) we get the following matrix
  t = [25 5 1; 64 8 1; 144 12 1 ];
  v= [106;177.2;279.2];
  A= [t,v];
  for i=1:size(A,1)
    for j=i+1:size(A,1)
      key1 = A(j,i)./A(i,i);
      A(j,:) = A(j,:) - key1.*A(i,:);
    endfor
  endfor

  a = zeros(1,size(t,2));

  for i=size(A,1):-1:1
    h = sum(A(i,i+1:end-1).*a(i+1:end)); % minus the values of a1 and a2
    a(i) = (A(i,end)-h)./A(i,i);
  endfor
  %Answer to the question of-1
  for i=1:size(A,1)
  fprintf('Solution is a%d = %d \n',i,a(i))
  endfor
 % Answer of the Question no-2
 velocity = @(t) a(1)*t.^2 + a(2)*t + a(3);

 V = velocity(6);

 fprintf('\nvelocity for t=6 will be : %d\n',V )
endfunction



