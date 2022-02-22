model war2
  parameter Real a = 0.31;
  parameter Real b = 0.79;
  parameter Real c = 0.41;
  parameter Real h = 0.32;
  
  parameter Real x0 = 150000;
  parameter Real y0 = 100000;
  
  Real t = time;
  Real x(start = x0);
  Real y(start = y0);
  
equation
  der(x) = -a*x-b*y+2*sin(t);
  der(y) = -c*x-h*y+2*cos(t);
end war2;
