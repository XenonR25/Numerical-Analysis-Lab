
function retval = Task102 ()

  function y = f(x)
    y = 3*x.^2 - 7*x + 2;
  endfunction

  a=1;
  b=4;
  t=1e-4;

  roots = [];
  it = 0;

  while (b-a)/2 > t
  bm = a+b/2;
  roots = [roots; bm];

  if f(bm)== 0
    break;
  elseif f(bm) < 0
    a = bm;
  else
    b = bm;
  endif
  it++;
  endwhile
  fprintf('%d th iterations and the root is: %f\n', it, roots(end));

  x=linspace(1,4,75);
  y = f(x);
  figure;
  plot(x,y);
  hold on;
  plot(roots,f(roots), 'or');
  xlabel('x');
  ylabel('y');
  set(gca,"fontsize",16);
  title('Bisection Mathod');
  grid on;

endfunction
