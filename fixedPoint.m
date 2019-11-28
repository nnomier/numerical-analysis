function [iterations,xc,err]=fixedPoint(g,x0,TOL,max)         
f=str2func(['@(x)',char(g)]);
x1=f(x0);
err=0;

if(isnan(x1) || isinf(x1))
        err = 1;
        display('nan or inf');
        return;
end
      iterations=[];
    tic;
t=0;

ea= abs((x1-x0)/x1);

while(ea>TOL&&t<max)
    x0=x1;
    x1=f(x0);
    ea= abs((x1-x0)/x1);
     if(isnan(x1) || isinf(x1))
            err = 1;
            display('nan or inf');
            return;
        end
    t=t+1;
  iterations=[iterations;[t x0 x1 ea toc]];
end
for i = 1:size(iterations)
            fprintf('%6f %12f %12f %12f %12f\r\n',iterations(i,:));
end
         
    % Testing the last value and compare it with the g(x), if the difference
    % between them is less than eps then this answer is acceptable.
    test = f(x1)-x1;
    if (abs(test) > TOL)
        fprintf('The iteration process is very likely to be divergent.\n Please choose another function again.\n');
        err = 1;
    else
        xc=x1;
        display(xc);
    end
    
end