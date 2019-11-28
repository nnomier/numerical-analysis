% Bisection Method in MATLAB
function [iterations,xr]=bisection(func,xu,xl,tol,max)

f=str2func(['@(x)',char(func)]);
tic;
iterations=[];

if f(xu)*f(xl)>0
    fprintf('The guess is incorrect! Enter new guesses\n');
    return;
%     xl=input('Enter the first value of guess interval:\n') ;
%     xu=input('Enter the end value of guess interval:\n');
end

fprintf( 'i \t\t\t\t xL \t\t\t\t xU \t\t\t\t xR \t\t\t\t f(xR) \n')

for i=2:max
xr=(xu+xl)/2;

fprintf( '%d \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \t\t\t\t %f \n',i-1,xl,xu,xr,f(xr));

if f(xu)*f(xr)<0
    xl=xr;
else
    xu=xr;
end 
xnew(1)=0;
xnew(i)=xr;
ea=abs((xnew(i)-xnew(i-1))/xnew(i));
iterations=[iterations;[i xl f(xl) xu f(xu) xr f(xr) ea toc]];

if ea<tol,break,end
end
str = ['The required root of the equation is: ', num2str(xr), '']
end