within Chaos.Examples;

model LorenzByF77
  extends BaseClasses.PartialLorenz;
equation
  (der_x, der_y, der_z) = Functions.getDerivativeF77(
    p, r, b, x, y, z
  );
  annotation(
    experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-06, Interval = 0.01)
  );
end LorenzByF77;

