function y = secant(f, x0, x1, epsilon, iteration)

f = str2func(f);
if( iteration == -1)
    iteration = 50;
end

if( epsilon == -1)
    epsilon = 0.00001;
end

for i=1:iteration
    fx1 = f(x1);
    fx0 = f(x0);
    difference = fx1 - fx0;
    
     if(isinf( difference )||isnan(difference) || difference == 0)
          y = x1;
          return;
     end
      
    xnew = x1-( fx1 *(x1-x0)/difference );
    
    error = abs( xnew - x1)/xnew ;
    if( error < epsilon)
            y = xnew;
            break;
    end
    
    x0 = x1;
    x1 = xnew;
end

y = xnew;
fprintf('The Root is : %f \n');
y
fprintf('The Number of iterations : %f \n');
i
end