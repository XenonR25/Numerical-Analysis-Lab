 function retval = newton ()

     f = @(x) 3*x.^3 - 7*x + 4;
     df = @(x) 9*x.^2 - 7;

   x = linspace(-3,5,75);
   plot(x,f(x));
   hold on;

   x0 = 3;
   t = 1e-4;
   roots = [];
   it = 0;
   x = linspace(-2,5,75);
   while abs(f(x0)) > t

     x1 = x0 - f(x0)/df(x0)  ;
     roots = [roots; x1];

     y = @(x) (df(x0)*(x-x1))
     plot(x,y(x));
     x0 = x1;
     it++;

   endwhile

   fprintf('%d th iteration and the root is %f\n',it,roots(end));



   plot(roots,f(roots),'or');
   hold on;
   ylim([-200 400]);
   set(gca,"fontsize",16);
   title('Newton Raphson Method');
   xlabel('x');
   ylabel('y');
   hold on;







 endfunction
