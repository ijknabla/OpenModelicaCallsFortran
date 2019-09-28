
      SUBROUTINE GETDER (
     &  P, R, B,
     &  X, Y, Z,
     &  DER_X, DER_Y, DER_Z
     &)
      DOUBLE PRECISION :: P, R, B, X, Y, Z 
      DOUBLE PRECISION :: DER_X, DER_Y, DER_Z

      DER_X = -P*X + P*Y
      DER_Y = -X*Z + R*X - Y
      DER_Z = +X*Y - B*Z

      END

