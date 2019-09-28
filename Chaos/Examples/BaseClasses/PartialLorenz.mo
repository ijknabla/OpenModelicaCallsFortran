within Chaos.Examples.BaseClasses;

partial model PartialLorenz
  parameter Real p = 10, r = 470/19, b = 8/3;
  parameter Real x0 = 1, y0 = 1, z0 = 1;
  Real x, y, z;
protected
  Real der_x, der_y, der_z;
initial equation
  x = x0;
  y = y0;
  z = z0;
equation
  der_x = der(x);
  der_y = der(y);
  der_z = der(z);
end PartialLorenz;
