model advert
parameter Real N = 1060;
parameter Real n0 = 7;
Real n(start=n0);

function k
  input Real t;
  output Real result;
algorithm
//result := 0.74;
//result := 0.000074;
result := 0.74*sin(t);
end k;

function p
  input Real t;
  output Real result;
algorithm
//result := 0.000074; // для первого случая
//result := 0.74; // для второго случая
result := 0.74*t; // для третьего случая
end p;

equation
der(n) = (k(time) + p(time) * n) *(N-n);

end advert;
