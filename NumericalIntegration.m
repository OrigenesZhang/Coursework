n=50;
lower_bound=0;
upper_bound=2;
x=linspace(lower_bound, upper_bound, n+1);
y=zeros(1, n+1);
delta_x=(upper_bound-lower_bound)/n;

%Midpoint rule
for i=1:n
	x_temp=(x(i)+x(i+1))/2;
	y(i)=x_temp/(1+x_temp^2);
end
Intg_f1=delta_x*(sum(y));

%Trapezoidal Rule
for i=1:(n+1)
	y(i)=x(i)/(1+x(i)^2);
end
Intg_f2=delta_x*(sum(y)-y(1)/2-y(n+1)/2);

%Simpson's Rule
for i=1:(n+1)
	y(i)=x(i)/(1+x(i)^2);
end
Intg_f=(y(1)+y(n+1))*delta_x/3;
for i=2:n
	Intg_f3=Intg_f+delta_x*y(i)+(1-2*mod(i, 2))/3*delta_x*y(i);
end

%Embedded Numerical Integration
fun=@(x)(x./(1+x.^2));
Intg_f=integral(fun, 0, 2);

disp(Intg_f1)
disp(Intg_f2)
disp(Intg_f3)
disp(Intg_f)
