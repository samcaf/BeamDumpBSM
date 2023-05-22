ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      DOUBLE COMPLEX FUNCTION COND(CONDITION,TRUECASE,FALSECASE)
      IMPLICIT NONE
      DOUBLE COMPLEX CONDITION,TRUECASE,FALSECASE
      IF(CONDITION.EQ.(0.0D0,0.0D0)) THEN
        COND=TRUECASE
      ELSE
        COND=FALSECASE
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION CONDIF(CONDITION,TRUECASE,FALSECASE)
      IMPLICIT NONE
      LOGICAL CONDITION
      DOUBLE COMPLEX TRUECASE,FALSECASE
      IF(CONDITION) THEN
        CONDIF=TRUECASE
      ELSE
        CONDIF=FALSECASE
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION RECMS(CONDITION,EXPR)
      IMPLICIT NONE
      LOGICAL CONDITION
      DOUBLE COMPLEX EXPR
      IF(CONDITION)THEN
        RECMS=EXPR
      ELSE
        RECMS=DCMPLX(DBLE(EXPR))
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION REGLOG(ARG_IN)
      IMPLICIT NONE
      DOUBLE COMPLEX TWOPII
      PARAMETER (TWOPII=2.0D0*3.1415926535897932D0*(0.0D0,1.0D0))
      DOUBLE COMPLEX ARG_IN
      DOUBLE COMPLEX ARG
      ARG=ARG_IN
      IF(DABS(DIMAG(ARG)).EQ.0.0D0)THEN
        ARG=DCMPLX(DBLE(ARG),0.0D0)
      ENDIF
      IF(DABS(DBLE(ARG)).EQ.0.0D0)THEN
        ARG=DCMPLX(0.0D0,DIMAG(ARG))
      ENDIF
      IF(ARG.EQ.(0.0D0,0.0D0)) THEN
        REGLOG=(0.0D0,0.0D0)
      ELSE
        REGLOG=LOG(ARG)
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION REGLOGP(ARG_IN)
      IMPLICIT NONE
      DOUBLE COMPLEX TWOPII
      PARAMETER (TWOPII=2.0D0*3.1415926535897932D0*(0.0D0,1.0D0))
      DOUBLE COMPLEX ARG_IN
      DOUBLE COMPLEX ARG
      ARG=ARG_IN
      IF(DABS(DIMAG(ARG)).EQ.0.0D0)THEN
        ARG=DCMPLX(DBLE(ARG),0.0D0)
      ENDIF
      IF(DABS(DBLE(ARG)).EQ.0.0D0)THEN
        ARG=DCMPLX(0.0D0,DIMAG(ARG))
      ENDIF
      IF(ARG.EQ.(0.0D0,0.0D0))THEN
        REGLOGP=(0.0D0,0.0D0)
      ELSE
        IF(DBLE(ARG).LT.0.0D0.AND.DIMAG(ARG).LT.0.0D0)THEN
          REGLOGP=LOG(ARG) + TWOPII
        ELSE
          REGLOGP=LOG(ARG)
        ENDIF
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION REGLOGM(ARG_IN)
      IMPLICIT NONE
      DOUBLE COMPLEX TWOPII
      PARAMETER (TWOPII=2.0D0*3.1415926535897932D0*(0.0D0,1.0D0))
      DOUBLE COMPLEX ARG_IN
      DOUBLE COMPLEX ARG
      ARG=ARG_IN
      IF(DABS(DIMAG(ARG)).EQ.0.0D0)THEN
        ARG=DCMPLX(DBLE(ARG),0.0D0)
      ENDIF
      IF(DABS(DBLE(ARG)).EQ.0.0D0)THEN
        ARG=DCMPLX(0.0D0,DIMAG(ARG))
      ENDIF
      IF(ARG.EQ.(0.0D0,0.0D0))THEN
        REGLOGM=(0.0D0,0.0D0)
      ELSE
        IF(DBLE(ARG).LT.0.0D0.AND.DIMAG(ARG).GT.0.0D0)THEN
          REGLOGM=LOG(ARG) - TWOPII
        ELSE
          REGLOGM=LOG(ARG)
        ENDIF
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION REGSQRT(ARG_IN)
      IMPLICIT NONE
      DOUBLE COMPLEX ARG_IN
      DOUBLE COMPLEX ARG
      ARG=ARG_IN
      IF(DABS(DIMAG(ARG)).EQ.0.0D0)THEN
        ARG=DCMPLX(DBLE(ARG),0.0D0)
      ENDIF
      IF(DABS(DBLE(ARG)).EQ.0.0D0)THEN
        ARG=DCMPLX(0.0D0,DIMAG(ARG))
      ENDIF
      REGSQRT=SQRT(ARG)
      END

      DOUBLE COMPLEX FUNCTION GRREGLOG(LOGSW,EXPR1_IN,EXPR2_IN)
      IMPLICIT NONE
      DOUBLE COMPLEX TWOPII
      PARAMETER (TWOPII=2.0D0*3.1415926535897932D0*(0.0D0,1.0D0))
      DOUBLE COMPLEX EXPR1_IN,EXPR2_IN
      DOUBLE COMPLEX EXPR1,EXPR2
      DOUBLE PRECISION LOGSW
      DOUBLE PRECISION IMAGEXPR
      LOGICAL FIRSTSHEET
      EXPR1=EXPR1_IN
      EXPR2=EXPR2_IN
      IF(DABS(DIMAG(EXPR1)).EQ.0.0D0)THEN
        EXPR1=DCMPLX(DBLE(EXPR1),0.0D0)
      ENDIF
      IF(DABS(DBLE(EXPR1)).EQ.0.0D0)THEN
        EXPR1=DCMPLX(0.0D0,DIMAG(EXPR1))
      ENDIF
      IF(DABS(DIMAG(EXPR2)).EQ.0.0D0)THEN
        EXPR2=DCMPLX(DBLE(EXPR2),0.0D0)
      ENDIF
      IF(DABS(DBLE(EXPR2)).EQ.0.0D0)THEN
        EXPR2=DCMPLX(0.0D0,DIMAG(EXPR2))
      ENDIF
      IF(EXPR1.EQ.(0.0D0,0.0D0))THEN
        GRREGLOG=(0.0D0,0.0D0)
      ELSE
        IMAGEXPR=DIMAG(EXPR1)*DIMAG(EXPR2)
        FIRSTSHEET=IMAGEXPR.GE.0.0D0
        FIRSTSHEET=FIRSTSHEET.OR.DBLE(EXPR1).GE.0.0D0
        FIRSTSHEET=FIRSTSHEET.OR.DBLE(EXPR2).GE.0.0D0
        IF(FIRSTSHEET)THEN
          GRREGLOG=LOG(EXPR1)
        ELSE
          IF(DIMAG(EXPR1).GT.0.0D0)THEN
            GRREGLOG=LOG(EXPR1) - LOGSW*TWOPII
          ELSE
            GRREGLOG=LOG(EXPR1) + LOGSW*TWOPII
          ENDIF
        ENDIF
      ENDIF
      END

      MODULE B0F_CACHING

      TYPE B0F_NODE
        DOUBLE COMPLEX P2,M12,M22
        DOUBLE COMPLEX VALUE
        TYPE(B0F_NODE),POINTER::PARENT
        TYPE(B0F_NODE),POINTER::LEFT
        TYPE(B0F_NODE),POINTER::RIGHT
        END TYPE B0F_NODE

        CONTAINS

        SUBROUTINE B0F_SEARCH(ITEM, HEAD, FIND)
        IMPLICIT NONE
        TYPE(B0F_NODE),POINTER,INTENT(INOUT)::HEAD,ITEM
        LOGICAL,INTENT(OUT)::FIND
        TYPE(B0F_NODE),POINTER::ITEM1
        INTEGER::ICOMP
        FIND=.FALSE.
        NULLIFY(ITEM%PARENT)
        NULLIFY(ITEM%LEFT)
        NULLIFY(ITEM%RIGHT)
        IF(.NOT.ASSOCIATED(HEAD))THEN
          HEAD => ITEM
          RETURN
        ENDIF
        ITEM1 => HEAD
        DO
        ICOMP=B0F_NODE_COMPARE(ITEM,ITEM1)
        IF(ICOMP.LT.0)THEN
          IF(.NOT.ASSOCIATED(ITEM1%LEFT))THEN
            ITEM1%LEFT => ITEM
            ITEM%PARENT => ITEM1
            EXIT
          ELSE
            ITEM1 => ITEM1%LEFT
          ENDIF
        ELSEIF(ICOMP.GT.0)THEN
          IF(.NOT.ASSOCIATED(ITEM1%RIGHT))THEN
            ITEM1%RIGHT => ITEM
            ITEM%PARENT => ITEM1
            EXIT
          ELSE
            ITEM1 => ITEM1%RIGHT
          ENDIF
        ELSE
          FIND=.TRUE.
          ITEM%VALUE=ITEM1%VALUE
          EXIT
        ENDIF
        ENDDO
        RETURN
        END

        INTEGER FUNCTION B0F_NODE_COMPARE(ITEM1,ITEM2) RESULT(RES)
        IMPLICIT NONE
        TYPE(B0F_NODE),POINTER,INTENT(IN)::ITEM1,ITEM2
        RES=COMPLEX_COMPARE(ITEM1%P2,ITEM2%P2)
        IF(RES.NE.0)RETURN
        RES=COMPLEX_COMPARE(ITEM1%M22,ITEM2%M22)
        IF(RES.NE.0)RETURN
        RES=COMPLEX_COMPARE(ITEM1%M12,ITEM2%M12)
        RETURN
        END

        INTEGER FUNCTION REAL_COMPARE(R1,R2) RESULT(RES)
        IMPLICIT NONE
        DOUBLE PRECISION R1,R2
        DOUBLE PRECISION MAXR,DIFF
        DOUBLE PRECISION TINY
        PARAMETER (TINY=-1D-14)
        MAXR=MAX(ABS(R1),ABS(R2))
        DIFF=R1-R2
        IF(MAXR.LE.1D-99.OR.ABS(DIFF)/MAX(MAXR,1D-99).LE.ABS(TINY))THEN
          RES=0
          RETURN
        ENDIF
        IF(DIFF.GT.0D0)THEN
          RES=1
          RETURN
        ELSE
          RES=-1
          RETURN
        ENDIF
        END

        INTEGER FUNCTION COMPLEX_COMPARE(C1,C2) RESULT(RES)
        IMPLICIT NONE
        DOUBLE COMPLEX C1,C2
        DOUBLE PRECISION R1,R2
        R1=DBLE(C1)
        R2=DBLE(C2)
        RES=REAL_COMPARE(R1,R2)
        IF(RES.NE.0)RETURN
        R1=DIMAG(C1)
        R2=DIMAG(C2)
        RES=REAL_COMPARE(R1,R2)
        RETURN
        END

        END MODULE B0F_CACHING

        DOUBLE COMPLEX FUNCTION B0F(P2,M12,M22)
        USE B0F_CACHING
        IMPLICIT NONE
        DOUBLE COMPLEX P2,M12,M22
        DOUBLE COMPLEX ZERO,TWOPII
        PARAMETER (ZERO=(0.0D0,0.0D0))
        PARAMETER (TWOPII=2.0D0*3.1415926535897932D0*(0.0D0,1.0D0))
        DOUBLE PRECISION M,M2,GA,GA2
        DOUBLE PRECISION TINY
        PARAMETER (TINY=-1D-14)
        DOUBLE COMPLEX LOGTERMS
        DOUBLE COMPLEX LOG_TRAJECTORY
        LOGICAL USE_CACHING
        PARAMETER (USE_CACHING=.TRUE.)
        TYPE(B0F_NODE),POINTER::ITEM
        TYPE(B0F_NODE),POINTER,SAVE::B0F_BT
        INTEGER INIT
        SAVE INIT
        DATA INIT /0/
        LOGICAL FIND
        IF(M12.EQ.ZERO)THEN
C         it is a special case
C         refer to Eq.(5.48) in arXiv:1804.10017
          M=DBLE(P2)  ! M^2
          M2=DBLE(M22)  ! M2^2
          IF(M.LT.TINY.OR.M2.LT.TINY)THEN
            WRITE(*,*)'ERROR:B0F is not well defined when M^2,M2^2<0'
            STOP
          ENDIF
          M=DSQRT(DABS(M))
          M2=DSQRT(DABS(M2))
          IF(M.EQ.0D0)THEN
            GA=0D0
          ELSE
            GA=-DIMAG(P2)/M
          ENDIF
          IF(M2.EQ.0D0)THEN
            GA2=0D0
          ELSE
            GA2=-DIMAG(M22)/M2
          ENDIF
          IF(P2.NE.M22.AND.P2.NE.ZERO.AND.M22.NE.ZERO)THEN
            B0F=(M22-P2)/P2*LOG((M22-P2)/M22)
            IF(M.GT.M2.AND.GA*M2.GT.GA2*M)THEN
              B0F=B0F-TWOPII
            ENDIF
            RETURN
          ELSE
            WRITE(*,*)'ERROR:B0F is not supported for a simple form'
            STOP
          ENDIF
        ENDIF
C       the general case
C       trajectory method as advocated in arXiv:1804.10017 (Eq.(E.47))
        IF(USE_CACHING)THEN
          IF(INIT.EQ.0)THEN
            NULLIFY(B0F_BT)
            INIT=1
          ENDIF
          ALLOCATE(ITEM)
          ITEM%P2=P2
          ITEM%M12=M12
          ITEM%M22=M22
          FIND=.FALSE.
          CALL B0F_SEARCH(ITEM,B0F_BT,FIND)
          IF(FIND)THEN
            B0F=ITEM%VALUE
            DEALLOCATE(ITEM)
            RETURN
          ELSE
            LOGTERMS=LOG_TRAJECTORY(100,P2,M12,M22)
            B0F=-LOG(P2/M22)+LOGTERMS
            ITEM%VALUE=B0F
            RETURN
          ENDIF
        ELSE
          LOGTERMS=LOG_TRAJECTORY(100,P2,M12,M22)
          B0F=-LOG(P2/M22)+LOGTERMS
        ENDIF
        RETURN
        END

        DOUBLE COMPLEX FUNCTION SQRT_TRAJECTORY(N_SEG,P2,M12,M22)
C       only needed when p2*m12*m22=\=0
        IMPLICIT NONE
        INTEGER N_SEG  ! number of segments
        DOUBLE COMPLEX P2,M12,M22
        DOUBLE COMPLEX ZERO,ONE
        PARAMETER (ZERO=(0.0D0,0.0D0),ONE=(1.0D0,0.0D0))
        DOUBLE COMPLEX GAMMA0,GAMMA1
        DOUBLE PRECISION M,GA,DGA,GA_START
        DOUBLE PRECISION GAI,INTERSECTION
        DOUBLE COMPLEX ARGIM1,ARGI,P2I
        DOUBLE COMPLEX GAMMA0I,GAMMA1I
        DOUBLE PRECISION TINY
        PARAMETER (TINY=-1D-24)
        INTEGER I
        DOUBLE PRECISION PREFACTOR
        IF(ABS(P2*M12*M22).EQ.0D0)THEN
          WRITE(*,*)'ERROR:sqrt_trajectory works when p2*m12*m22/=0'
          STOP
        ENDIF
        M=DBLE(P2)  ! M^2
        M=DSQRT(DABS(M))
        IF(M.EQ.0D0)THEN
          GA=0D0
        ELSE
          GA=-DIMAG(P2)/M
        ENDIF
C       Eq.(5.37) in arXiv:1804.10017
        GAMMA0=ONE+M12/P2-M22/P2
        GAMMA1=M12/P2-DCMPLX(0D0,1D0)*ABS(TINY)/P2
        IF(ABS(GA).EQ.0D0)THEN
          SQRT_TRAJECTORY=SQRT(GAMMA0**2-4D0*GAMMA1)
          RETURN
        ENDIF
C       segments from -DABS(tiny*Ga) to Ga
        GA_START=-DABS(TINY*GA)
        DGA=(GA-GA_START)/N_SEG
        PREFACTOR=1D0
        GAI=GA_START
        P2I=DCMPLX(M**2,-GAI*M)
        GAMMA0I=ONE+M12/P2I-M22/P2I
        GAMMA1I=M12/P2I-DCMPLX(0D0,1D0)*ABS(TINY)/P2I
        ARGIM1=GAMMA0I**2-4D0*GAMMA1I
        DO I=1,N_SEG
          GAI=DGA*I+GA_START
          P2I=DCMPLX(M**2,-GAI*M)
          GAMMA0I=ONE+M12/P2I-M22/P2I
          GAMMA1I=M12/P2I-DCMPLX(0D0,1D0)*ABS(TINY)/P2I
          ARGI=GAMMA0I**2-4D0*GAMMA1I
          IF(DIMAG(ARGI)*DIMAG(ARGIM1).LT.0D0)THEN
            INTERSECTION=DIMAG(ARGIM1)*(DBLE(ARGI)-DBLE(ARGIM1))
            INTERSECTION=INTERSECTION/(DIMAG(ARGI)-DIMAG(ARGIM1))
            INTERSECTION=INTERSECTION-DBLE(ARGIM1)
            IF(INTERSECTION.GT.0D0)THEN
              PREFACTOR=-PREFACTOR
            ENDIF
          ENDIF
          ARGIM1=ARGI
        ENDDO
        SQRT_TRAJECTORY=SQRT(GAMMA0**2-4D0*GAMMA1)*PREFACTOR
        RETURN
        END

        DOUBLE COMPLEX FUNCTION LOG_TRAJECTORY(N_SEG,P2,M12,M22)
C       sum of log terms appearing in Eq.(5.35) of arXiv:1804.10017
C       only needed when p2*m12*m22=\=0
        IMPLICIT NONE
C       4 possible logarithms appearing in Eq.(5.35) of
C        arXiv:1804.10017
C       log(arg(i)) with arg(i) for i=1 to 4
C       i=1: (ga_{+}-1)
C       i=2: (ga_{-}-1)
C       i=3: (ga_{+}-1)/ga_{+}
C       i=4: (ga_{-}-1)/ga_{-}
        INTEGER N_SEG  ! number of segments
        DOUBLE COMPLEX P2,M12,M22
        DOUBLE COMPLEX ZERO,ONE,HALF,TWOPII
        PARAMETER (ZERO=(0.0D0,0.0D0),ONE=(1.0D0,0.0D0))
        PARAMETER (HALF=(0.5D0,0.0D0))
        PARAMETER (TWOPII=2.0D0*3.1415926535897932D0*(0.0D0,1.0D0))
        DOUBLE COMPLEX GAMMA0,GAMMAP,GAMMAM,SQRTTERM
        DOUBLE PRECISION M,GA,DGA,GA_START
        DOUBLE PRECISION GAI,INTERSECTION
        DOUBLE COMPLEX ARGIM1(4),ARGI(4),P2I,SQRTTERMI
        DOUBLE COMPLEX GAMMA0I,GAMMAPI,GAMMAMI
        DOUBLE PRECISION TINY
        PARAMETER (TINY=-1D-14)
        INTEGER I,J
        DOUBLE COMPLEX ADDFACTOR(4)
        DOUBLE COMPLEX SQRT_TRAJECTORY
        IF(ABS(P2*M12*M22).EQ.0D0)THEN
          WRITE(*,*)'ERROR:log_trajectory works when p2*m12*m22/=0'
          STOP
        ENDIF
        M=DBLE(P2)  ! M^2
        M=DSQRT(DABS(M))
        IF(M.EQ.0D0)THEN
          GA=0D0
        ELSE
          GA=-DIMAG(P2)/M
        ENDIF
C       Eq.(5.36-5.38) in arXiv:1804.10017
        SQRTTERM=SQRT_TRAJECTORY(N_SEG,P2,M12,M22)
        GAMMA0=ONE+M12/P2-M22/P2
        GAMMAP=HALF*(GAMMA0+SQRTTERM)
        GAMMAM=HALF*(GAMMA0-SQRTTERM)
        IF(ABS(GA).EQ.0D0)THEN
          LOG_TRAJECTORY=-LOG(GAMMAP-ONE)-LOG(GAMMAM-ONE)+GAMMAP
     $     *LOG((GAMMAP-ONE)/GAMMAP)+GAMMAM*LOG((GAMMAM-ONE)/GAMMAM)
          RETURN
        ENDIF
C       segments from -DABS(tiny*Ga) to Ga
        GA_START=-DABS(TINY*GA)
        DGA=(GA-GA_START)/N_SEG
        ADDFACTOR(1:4)=ZERO
        GAI=GA_START
        P2I=DCMPLX(M**2,-GAI*M)
        SQRTTERMI=SQRT_TRAJECTORY(N_SEG,P2I,M12,M22)
        GAMMA0I=ONE+M12/P2I-M22/P2I
        GAMMAPI=HALF*(GAMMA0I+SQRTTERMI)
        GAMMAMI=HALF*(GAMMA0I-SQRTTERMI)
        ARGIM1(1)=GAMMAPI-ONE
        ARGIM1(2)=GAMMAMI-ONE
        ARGIM1(3)=(GAMMAPI-ONE)/GAMMAPI
        ARGIM1(4)=(GAMMAMI-ONE)/GAMMAMI
        DO I=1,N_SEG
          GAI=DGA*I+GA_START
          P2I=DCMPLX(M**2,-GAI*M)
          SQRTTERMI=SQRT_TRAJECTORY(N_SEG,P2I,M12,M22)
          GAMMA0I=ONE+M12/P2I-M22/P2I
          GAMMAPI=HALF*(GAMMA0I+SQRTTERMI)
          GAMMAMI=HALF*(GAMMA0I-SQRTTERMI)
          ARGI(1)=GAMMAPI-ONE
          ARGI(2)=GAMMAMI-ONE
          ARGI(3)=(GAMMAPI-ONE)/GAMMAPI
          ARGI(4)=(GAMMAMI-ONE)/GAMMAMI
          DO J=1,4
            IF(DIMAG(ARGI(J))*DIMAG(ARGIM1(J)).LT.0D0)THEN
              INTERSECTION=DIMAG(ARGIM1(J))*(DBLE(ARGI(J))
     $         -DBLE(ARGIM1(J)))
              INTERSECTION=INTERSECTION/(DIMAG(ARGI(J))-DIMAG(ARGIM1(J)
     $         ))
              INTERSECTION=INTERSECTION-DBLE(ARGIM1(J))
              IF(INTERSECTION.GT.0D0)THEN
                IF(DIMAG(ARGIM1(J)).LT.0)THEN
                  ADDFACTOR(J)=ADDFACTOR(J)-TWOPII
                ELSE
                  ADDFACTOR(J)=ADDFACTOR(J)+TWOPII
                ENDIF
              ENDIF
            ENDIF
            ARGIM1(J)=ARGI(J)
          ENDDO
        ENDDO
        LOG_TRAJECTORY=-(LOG(GAMMAP-ONE)+ADDFACTOR(1))-(LOG(GAMMAM-ONE)
     $   +ADDFACTOR(2))
        LOG_TRAJECTORY=LOG_TRAJECTORY+GAMMAP*(LOG((GAMMAP-ONE)/GAMMAP)
     $   +ADDFACTOR(3))
        LOG_TRAJECTORY=LOG_TRAJECTORY+GAMMAM*(LOG((GAMMAM-ONE)/GAMMAM)
     $   +ADDFACTOR(4))
        RETURN
        END

        DOUBLE COMPLEX FUNCTION ARG(COMNUM)
        IMPLICIT NONE
        DOUBLE COMPLEX COMNUM
        DOUBLE COMPLEX IIM
        IIM = (0.0D0,1.0D0)
        IF(COMNUM.EQ.(0.0D0,0.0D0)) THEN
          ARG=(0.0D0,0.0D0)
        ELSE
          ARG=LOG(COMNUM/ABS(COMNUM))/IIM
        ENDIF
        END
        DOUBLE COMPLEX FUNCTION FFNUCLIDE_VSS(T)
        IMPLICIT NONE
        DOUBLE COMPLEX T
        FFNUCLIDE_VSS = SQRT((3.924305367838731E22*T**2)/((1. +
     $    197.14366506136577*T)**2*(1. + 2.67700805204905E9*T)**2) +
     $    (4.0146544964586963E21*T**2*(1. + 1.9276428548697275*T)**2)
     $   /((1. + 1.4084507042253522*T)**8*(1. + 7.365601658383542E9*T)
     $   **2))
        RETURN
        END FUNCTION FFNUCLIDE_VSS


        DOUBLE COMPLEX FUNCTION FFNUCLIDE_VVSS(T)
        IMPLICIT NONE
        DOUBLE COMPLEX T
        FFNUCLIDE_VVSS = (SQRT((3.924305367838731E22*T**2)/((1. +
     $    197.14366506136577*T)**2*(1. + 2.67700805204905E9*T)**2) +
     $    (4.0146544964586963E21*T**2*(1. + 1.9276428548697275*T)**2)
     $   /((1. + 1.4084507042253522*T)**8*(1. + 7.365601658383542E9*T)
     $   **2)))**2
        RETURN
        END FUNCTION FFNUCLIDE_VVSS


        DOUBLE COMPLEX FUNCTION FFNUCLIDE_FFV(T)
        IMPLICIT NONE
        DOUBLE COMPLEX T
        FFNUCLIDE_FFV = 0
        RETURN
        END FUNCTION FFNUCLIDE_FFV


        DOUBLE COMPLEX FUNCTION COT(Z)
        IMPLICIT NONE
        DOUBLE COMPLEX Z

        COT = 1.000000D+00/TAN(DBLE(DBLE(Z)))

        RETURN
        END

