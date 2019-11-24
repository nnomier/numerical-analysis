%The Newton Raphson Method
function y= newton(  f, x0, epsilon, iteration)

syms x;
%g=diff(f); %The Derivative of the Function

g  = matlabFunction( diff(f(x)) );
if( iteration == -1)
    iteration = 50;
end

if( epsilon == -1)
    epsilon = 0.00001;
end

for i=1:iteration
    % f0 = vpa(subs(f,x,x0)); %Calculating the value of function at x0
    f0 = subs( f,x,x0);
     f0_der =  subs(g,x,x0); %Calculating the value of function derivative at x0
  y=x0-f0/f0_der; % The Formula
err=abs(y-x0);
if err<epsilon %checking the amount of error at each iteration
break
end
x0=y;
end

fprintf('The Root is : %f \n');
y
fprintf('No. of Iterations : %d\n',i);
end