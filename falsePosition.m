function root = falsePosition(func, xl, xu, es, maxit)


a(1)=xl;
b(1)=xu;
ya(1)=func(a(1)); 
yb(1)=func(b(1));
fprintf( 'i \t\t\t\t a \t\t\t\t b \t\t\t\t x \t\t\t\t f(x) \n')


if ya(1)* yb(1) > 0.0
    error('Function has same sign at end points');
end

for i=1:maxit
    x(i) = b(i) -yb(i) *(b(i)-a(i)) / (yb(i)-ya(i));
    y(i) = func(x(i));
    fprintf( '%d \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \n',i,a(i),b(i),x(i),y(i));

    if y(i) == 0.0
        disp('exact zero found'); break;
    elseif y(i) * ya(i) < 0
        a(i+1) = a(i) ; ya(i+1) = ya(i);
        b(i+1) = x(i) ; yb(i+1) = y(i);
    else 
        a(i+1) = x(i) ; ya(i+1) = y(i);
        b(i+1) = b(i) ; yb(i+1) = yb(i);
    end;
        if((i>1)  && (abs((x(i) - x(i-1))/x(i)) <es))
            disp('False position method has converged'); break
        end
        iter = i;
end
if(iter >= maxit)
    disp('zero not found to desired tolerance');
end
end