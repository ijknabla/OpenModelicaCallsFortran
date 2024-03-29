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

  function getDerivativeF90
    extends getDerivativeInterface;
  external "FORTRAN 77" get_derivative_f90(
    p, r, b, x, y, z, der_x, der_y, der_z
  ) annotation (
    Library="lorenz"
  );
  end getDerivativeF90;

  function getDerivativeF03
    extends getDerivativeInterface;
  external "C" getDerivativeF03(
    p, r, b, x, y, z, der_x, der_y, der_z
  ) annotation (
    Library="lorenz"
  );
  end getDerivativeF03;

end Functions;
