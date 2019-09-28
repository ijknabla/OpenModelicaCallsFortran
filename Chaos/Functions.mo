within Chaos;

package Functions
  extends Modelica.Icons.InternalPackage;

  partial function getDerivativeInterface
    extends Modelica.Icons.Function;
    input Real p, r, b, x, y, z;
    output Real der_x, der_y, der_z;
  end getDerivativeInterface;
  
  function getDerivativeC
    extends getDerivativeInterface;
  external "C" getDerivativeC(
    p, r, b, x, y, z, der_x, der_y, der_z
  ) annotation (
    Library="lorenz"
  );
  end getDerivativeC;

  function getDerivativeF77
    extends getDerivativeInterface;
  external "FORTRAN 77" getder(
    p, r, b, x, y, z, der_x, der_y, der_z
  ) annotation (
    Library="lorenz"
  );
  end getDerivativeF77;

end Functions;
