model Epidemic
parameter Real a = 0.01;
parameter Real b = 0.02;
parameter Real N = 12200;
parameter Real I0 = 130;
parameter Real S0 = N-I0-R0;
parameter Real R0 = 53;

Real S(start=S0);
Real I(start=I0);
Real R(start=R0);
equation
  der(S) = -a*S;
  der(I) = a*S-b*I;
  der(R) = b*I;
end Epidemic;
