function [iterations,flag,root] = secant(func, x0, x1, epsilon, iteration)

f = str2func(['@(x)',char(func)]);
root=0; %default value so that it would'nt outputs an error if xc is not found
tic;
iterations=[];

flag = 0;
error=1;
fx1 = f(x1);
fx0 = f(x0);


difference = fx1-fx0;

if( difference == 0)
    return;
end
    
a(1) = x1;
b(1) = x0;
c(1)= x1-( fx1 *(x1-x0)/difference );
i = 0;
a(1)
iterations=[iterations;[i b(1) a(1) c(1) error toc]];

b(2) = a(1);
a(2) = c(1);

for i=1:iteration
    fx1 = f(a(i+1));
    fx0 = f(b(i+1));
    difference = fx1 - fx0;
    
     if( isnan(difference) || difference == 0)
          flag=1;
          msgbox('error division by zero found');
          return;
     end
      
    c(i+1) = a(i+1)-( fx1 *(a(i+1)-b(i+1))/difference );
    
    error = abs( c(i+1) - a(i+1))/abs(c(i+1)) ;
    
    iterations=[iterations; [ i b(i+1) a(i+1) c(i+1) error toc] ];
    if( error < epsilon || f(c(i+1)) == 0)
            break;
    end
    
    b(i+2) = a(i+1);
    a(i+2) = c(i+1);
end
if(i>=iteration) 
     flag=1;
     msgbox('zero not found at desired tolerance');
end
 
display( iterations(:,:))
fprintf('The Root is : %f \n');
c(i)
root=c(i);

fprintf('The Number of iterations : %f \n');
i

end