
void getDerivativeC(
    double p, double r, double b,
    double x, double y, double z,
    double *der_x, double *der_y, double *der_z
) {
    *der_x = -p*x + p*y;
    *der_y = -x*z + r*x - y;
    *der_z = +x*y - b*z;
}
