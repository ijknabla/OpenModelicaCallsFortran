
subroutine get_derivative_f90( &
    p, r, b, x, y, z,          &
    der_x, der_y, der_z        &
    )
    implicit none

    double precision,intent(in)  :: p, r, b, x, y, z
    double precision,intent(out) :: der_x, der_y, der_z

    der_x = -p*x + p*y
    der_y = -x*z + r*x - y
    der_z = +x*y - b*z

end subroutine get_derivative_f90
