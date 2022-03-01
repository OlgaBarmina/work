model lab04_3
parameter Real w = sqrt(8.7);
parameter Real g = 8.7;

parameter Real x0 = 0.6;
parameter Real y0 = -0.6;

Real x(start=x0);
Real y(start=y0);

function f 
  input Real t;
  output Real res;
algorithm
  res := 8.7*sin(2*t);
end f;

equation

der(x) = y;
der(y) = -w*w*x-g*y-f(time);
end lab04_3;
