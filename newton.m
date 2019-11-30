%The Newton Raphson Method
function [iterations,flag,root] = newton(func,  x0, epsilon, iteration)

syms x;
 %The Derivative of the Function
f = str2func(['@(x)',char(func)]);
tic;
root=0; %default value so that it would'nt outputs an error if xc is not found
iterations=[];
g  = matlabFunction( diff(f(x)) );

flag=0;
err=1;  %set initial error to 1

 a(1) = x0;
% f0(1) = vpa(subs( f,x, a(1) ),5 );
 %f0_der(1) = vpa( subs(g,x, a(1)), 5 ); %Calculating the value of function derivative at x0
 f0(1) = f(a(1));
 f0_der(1) = g(a(1));
% iteration xroot f(xroot) diff(f) error time
i=0;
iterations=[iterations;[i a(1) f0(1) f0_der(1) err toc]];

for i=1:iteration
    
    %a(i+1) = vpa( a(i)-f0(i)/f0_der(i), 5 ); % The Formula
    a(i+1) = a(i)-f0(i)/f0_der(i);
    err =abs(a(i+1)-a(i) )/abs(a(i+1));
    
    %Calculating the value of function at x0
   % f0(i+1) = vpa(subs( f,x, a(i+1)),5 );
    f0(i+1) = f(a(i+1));
    f0_der(i+1) = g(a(i+1));
    %f0_der(i+1) = vpa( subs(g,x,a(i+1) ), 5); %Calculating the value of function derivative at x0
    
    
    iterations = [iterations;[i a(i+1) f0(i+1) f0_der(i+1) err toc]];
    
   
    if err<epsilon  %checking the amount of error at each iteration
        break
    end
    
end
 if(i>=iteration) 
     flag=1;
     msgbox('zero not found at desired tolerance');
 end
 display( iterations( :,: ) )

fprintf('The Root is : %f \n');
double(a(i))
root=double(a(i));
fprintf('No. of Iterations : %d\n',i);
end