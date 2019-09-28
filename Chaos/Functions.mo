within Chaos;

package Functions
  extends Modelica.Icons.InternalPackage;

  partial function getDerivativeInterface
    extends Modelica.Icons.Function;
    input Real p, r, b, x, y, z;
    output Real der_x, der_y, der_z;
  end getDerivativeInterface;

end Functions;
