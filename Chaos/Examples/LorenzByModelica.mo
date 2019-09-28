within Chaos.Examples;

model LorenzByModelica
  extends BaseClasses.PartialLorenz;
equation
  der(x) = -p*x + p*y;
  der(y) = -x*z + r*x - y;
  der(z) = +x*y - b*z;
  annotation(
    experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-06, Interval = 0.01)
  );
end LorenzByModelica;
