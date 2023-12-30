C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     FFNuclide_VSS(2*P(-1,2)*P(-1,3)-2*Mns**2)*(P(1,2) - P(1,3))
C     
      SUBROUTINE FORMFACTOR_VSS1P0_1(S2, S3, COUP, M1, W1,V1)
      IMPLICIT NONE
      INCLUDE '../MODEL/input.inc'
      INCLUDE '../MODEL/coupl.inc'
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 FCT0
      COMPLEX*16 FCT1
      COMPLEX*16 FFNUCLIDE_VSS
      EXTERNAL FFNUCLIDE_VSS
      REAL*8 M1
      REAL*8 P1(0:3)
      REAL*8 P2(0:3)
      REAL*8 P3(0:3)
      COMPLEX*16 S2(*)
      COMPLEX*16 S3(*)
      COMPLEX*16 TMP1
      COMPLEX*16 V1(6)
      REAL*8 W1
      COMPLEX*16 DENOM
      P2(0) = DBLE(S2(1))
      P2(1) = DBLE(S2(2))
      P2(2) = DIMAG(S2(2))
      P2(3) = DIMAG(S2(1))
      P3(0) = DBLE(S3(1))
      P3(1) = DBLE(S3(2))
      P3(2) = DIMAG(S3(2))
      P3(3) = DIMAG(S3(1))
      V1(1) = +S2(1)+S3(1)
      V1(2) = +S2(2)+S3(2)
      P1(0) = -DBLE(V1(1))
      P1(1) = -DBLE(V1(2))
      P1(2) = -DIMAG(V1(2))
      P1(3) = -DIMAG(V1(1))
      TMP1 = (P2(0)*P3(0)-P2(1)*P3(1)-P2(2)*P3(2)-P2(3)*P3(3))
      FCT0 = (MDL_MNS)**(2D0)
      FCT1 = FFNUCLIDE_VSS(2D0*(TMP1-FCT0))
      DENOM = COUP/(P1(0)**2-P1(1)**2-P1(2)**2-P1(3)**2 - M1 * (M1 -CI
     $ * W1))
      V1(3)= DENOM*FCT1*S2(3)*S3(3)*(-CI*(P2(0))+CI*(P3(0)))
      V1(4)= DENOM*FCT1*S2(3)*S3(3)*(-CI*(P2(1))+CI*(P3(1)))
      V1(5)= DENOM*FCT1*S2(3)*S3(3)*(-CI*(P2(2))+CI*(P3(2)))
      V1(6)= DENOM*FCT1*S2(3)*S3(3)*(-CI*(P2(3))+CI*(P3(3)))
      END

