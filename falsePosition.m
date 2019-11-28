function [iterations,root] = falsePosition(func, xl, xu, es, maxit)



% x=-5:0.1:5;
% plot(x,exp(x)-x.^3-cos(x));

func=str2func(['@(x)',char(func)]);


a(1)=xl;
b(1)=xu;
ya(1)=func(a(1)); 
yb(1)=func(b(1));
fprintf( 'i \t\t\t\t\t\t x1 \t\t\t\t\t f(x1) \t\t\t\t\t xu \t\t\t\t\t f(xu) \t\t\t\t\t xr \t\t\t\t\t f(xr) \t\t\t\t\t Ea\n')

ea=0;
tic;
iterations=[];
if ya(1)* yb(1) > 0.0
    diplay('Function has same sign at end points');
end

for i=1:maxit
    x(i) = b(i)-yb(i) *(b(i)-a(i)) / (yb(i)-ya(i));
    y(i) = func(x(i));
    if((i>1) )
            ea= abs((x(i) - x(i-1))/x(i));
    end
           iterations=[iterations;[a(i) ya(i) b(i) yb(i) x(i) y(i) ea toc]];

    if y(i) == 0.0
        disp('found root');
        fprintf('the root is %f',x(i));
        break;
    elseif y(i) * ya(i) < 0
        a(i+1) = a(i) ; ya(i+1) = ya(i);
        b(i+1) = x(i) ; yb(i+1) = y(i);
    else 
        a(i+1) = x(i) ; ya(i+1) = y(i);
        b(i+1) = b(i) ; yb(i+1) = yb(i);
    end;
        
        if((i>1) &&ea<es )
%            fprintf( '%d \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f  \t\t\t\t %f  \t\t\t\t \n',i,a(i),ya(i),b(i),yb(i),x(i),y(i),ea);
             fprintf('the root is %f',x(i));

             break
            
        end
            fprintf( '%d \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f  \t\t\t\t %f  \t\t\t\t  %f  \t\t\t\t \n',i,a(i),ya(i),b(i),yb(i),x(i),y(i),ea,toc);

end
if(i >= maxit)
    disp('zero not found to desired tolerance');
else
    root=x(i);
    fprintf('here the root is : %f',root);
end
end