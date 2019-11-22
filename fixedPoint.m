function [xc,err]=fixedPoint(f,x0,TOL,iter)
% Input: f is an anonymous function
%        x0 is the starting point
%        TOL is the tolerance
% Output:xc is the root
%     % converting the string input function to inline function in order to
%     % use it the the values of Ys against Xs.
syms x;
f = inline(f+x);
err = 0;


x1=f(x0);
if iter==-1
    max=20;
else 
    max=iter;
end

if(isnan(x1) || isinf(x1))
        err = 1;
        display('nan or inf');
        return;
end
    
t=0;

while(abs(x1-x0)>TOL&&t<max)
    x0=x1;
    x1=f(x0);
     if(isnan(x1) || isinf(x1))
            err = 1;
            display('nan or inf');
            return;
        end
    t=t+1;
    display ([x0 x1]);
end

test = f(x1)-x1;
    if (abs(test) > eps)
        err = 1;
        fprintf('The iteration process is very likely to be divergent.\n Please choose another function again.\n');
        xc=[];
     else xc=x1;
    end
%     
% if t==max  
%     % t is used to stop the program when the iteration is not convergent
%     %since fixed point method is usually very quick to find the solution
%     %It is reasonable to stop the program when the iteration is over max times
%     fprintf('The iteration process is very likely to be divergent.\n Please choose another function again.\n');
%     xc=[];
% else xc=x1;
% end
end