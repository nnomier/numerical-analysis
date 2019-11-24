function y = secant(f, x0, x1, epsilon, iteration)

if( iteration == -1)
    iteration = 50;
end

if( epsilon == -1)
    epsilon = 0.00001;
end

for i=1:iteration
    difference =double(f(x1) - f(x0) );
    
     if(isinf( difference )||isnan(difference) || difference == 0)
          y= x1;
          return;
     end
      
    xnew = x1-( f(x1)*(x1-x0)/difference );
    
    error = abs( xnew - x1);
    if( error < epsilon)
            y = xnew;
            break;
    end
    
    x1 = xnew;
    x0 = x1;
end

y = xnew;
fprintf('The Root is : %f \n');

fprintf('The Number of iterations : %f \n');

end