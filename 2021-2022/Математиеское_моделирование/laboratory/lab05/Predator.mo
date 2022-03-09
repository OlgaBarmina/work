model Predator
parameter Real a = 0.26;
parameter Real c = 0.027;
parameter Real b = 0.28;
parameter Real d = 0.031;

//parameter Real x0 = 6;
//parameter Real y0 = 12;

parameter Real x0 = b/d;
parameter Real y0 = a/c;

Real x(start=x0);
Real y(start=y0);

equation

der(x) = -a*x + c*x*y;
der(y) = b*y - d*x*y;

end Predator;
