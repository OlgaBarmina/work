model lab04_1
parameter Real w = sqrt(8.7);
parameter Real g = 0;

parameter Real x0 = 0.6;
parameter Real y0 = -0.6;

Real x(start=x0);
Real y(start=y0);

function f 
  input Real t;
  output Real res;
algorithm
  res := 0;
end f;

equation

der(x) = y;
der(y) = -w*w*x-g*y-f(time);

end lab04_1;
