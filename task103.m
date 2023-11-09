function retval = falseposition ()
 function y = f(x)
  y = 3*x.^2 - 7*x + 2;
 endfunction

 a=1;
 b=4;
 d = 1e-4;

 roots=[];
 it=0;

 while (b-a)/2 > d
   c = (a*f(b) - b*f(a)) / (f(b)-f(a));
   roots = [roots; c];
   if f(c) == 0
     break;
   elseif f(c) < 0
    a = c;
   else
    b = c;
   endif
   it++;
 endwhile

 fprintf("%d th iteration and the root will be: %f\n",it, roots(end));

 x = linspace(1,4, 75);
 y = f(x);

 figure;
 plot(x,y);
 hold on;
 plot(roots, f(roots), 'or');
 set(gca,"fontsize",16);
 xlabel('x');
 ylabel('y');

 title('False Position Method ');
 grid on;

 endfunction
