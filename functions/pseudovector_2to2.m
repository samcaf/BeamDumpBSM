pseudovector2to2["\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\)"] = 
    (-4*alphaEM^2*epsmu^2*Pi*(2*mBSM^4*stilde*utilde + 
       12*mmu^4*(stilde + utilde)^2 + stilde*utilde*(2*q^4 + stilde^2 + 
         utilde^2 - 2*q^2*(stilde + utilde)) - 
       mBSM^2*(2*stilde*utilde*(stilde + utilde) + 
         q^2*(stilde^2 - 4*stilde*utilde + utilde^2) + 
         2*mmu^2*(stilde^2 + 8*stilde*utilde + utilde^2)) + 
       2*mmu^2*(6*stilde*utilde*(stilde + utilde) + 
         q^2*(3*stilde^2 - 4*stilde*utilde + 3*utilde^2))))/
     (stilde^4*utilde^2)
 
pseudovector2to2[
     "\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\) near tmin"] = 
    -((alphaEM^2*epsmu^2*Pi*x^2*(-2*E0^6*thetaBSM^4*x^4*
         (4 + x*(-8 + (6 + thetaBSM^2 - 2*x)*x)) + 
        (mBSM^2*(-1 + x) - mmu^2*x^2)^2*(mBSM^2*(-2 + x)^2 - 
          4*mmu^2*(5 + x*(-5 + 2*x))) + E0^4*thetaBSM^2*x^2*
         (4*mmu^2*x^2*(thetaBSM^2*(-5 + (5 - 3*x)*x) + 2*(-1 + x)*
             (8 + (-8 + x)*x)) + mBSM^2*(-16 + 
            x*(48 + x*(-48 + x*(16 + thetaBSM^2*x))))) + 
        2*E0^2*(4*q^4*(-1 + x)^3*x^2 + mmu^4*x^4*
           (thetaBSM^2*(-20 + (20 - 9*x)*x) + 2*(-1 + x)*(2 + (-2 + x)*x)) - 
          mBSM^4*(-1 + x)*(-4 + x*(12 - 2*x*(7 + (-4 + x)*x) + 
              thetaBSM^2*x*(3 + (-3 + x)*x))) + mBSM^2*mmu^2*x^2*
           (-4*(-1 + x)^2*(2 + (-2 + x)*x) + thetaBSM^2*
             (-20 + x*(40 + x*(-26 + x*(6 + x))))))))/
      (E0^2*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^4))
 
pseudovector2to2[
     "\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\) on-shell"] = 
    (-4*alphaEM^2*epsmu^2*Pi*(2*mBSM^4*stilde*utilde + 
       12*mmu^2*stilde*utilde*(stilde + utilde) + 
       12*mmu^4*(stilde + utilde)^2 + stilde*utilde*(2*q^4 + stilde^2 + 
         utilde^2) - mBSM^2*(2*stilde*utilde*(stilde + utilde) + 
         2*mmu^2*(stilde^2 + 8*stilde*utilde + utilde^2))))/
     (stilde^4*utilde^2)
 
pseudovector2to2[
     "\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\) on-shell near \
tmin"] = (-4*alphaEM^2*epsmu^2*Pi*(-1 + x)*x^2*(2*q^4*(-1 + x)^2*x^2 + 
       mBSM^4*(-1 + x)^2*(2 + (-2 + x)*x) - 2*mBSM^2*(-1 + x)*x^2*
        (-2*E0^2*thetaBSM^2*(-1 + x) + mmu^2*(2 + (-2 + x)*x)) + 
       x^4*(2*E0^2*mmu^2*thetaBSM^2*(8 + (-8 + x)*x) + 
         mmu^4*(2 + (-2 + x)*x) + E0^4*thetaBSM^4*(2 + (-2 + x)*x))))/
     (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^4
 
pseudovector2to2["Squared, Spin-Averaged Matrix Element"] = 
    (-2*e^2*gmu^2*(26*mmu^8 + 2*mBSM^4*(mmu^2 - s2)*(mmu^2 - u2) + 
       8*mmu^6*(q^2 - 2*(s2 + u2)) + s2*u2*(2*q^4 + s2^2 + u2^2 - 
         2*q^2*(s2 + u2)) - mmu^2*(2*q^4*(s2 + u2) - 8*q^2*(s2^2 + u2^2) + 
         (s2 + u2)*(s2^2 - 10*s2*u2 + u2^2)) + 
       mmu^4*(2*q^4 - 10*q^2*(s2 + u2) + 3*(s2^2 - 6*s2*u2 + u2^2)) - 
       mBSM^2*(16*mmu^6 + 2*s2*u2*(s2 + u2) + q^2*(s2^2 - 4*s2*u2 + u2^2) - 
         2*mmu^4*(q^2 + 7*(s2 + u2)) + 2*mmu^2*(4*s2*u2 + q^2*(s2 + u2)))))/
     ((mmu^2 - s2)^2*(mmu^2 - u2)^2)
 
pseudovector2to2["Squared, Spin-Averaged Matrix Element on-shell"] = 
    (-2*e^2*gmu^2*(26*mmu^8 + 2*mBSM^4*(mmu^2 - s2)*(mmu^2 - u2) - 
       16*mmu^6*(s2 + u2) + s2*u2*(2*q^4 + s2^2 + u2^2) - 
       mBSM^2*(16*mmu^6 + 8*mmu^2*s2*u2 - 14*mmu^4*(s2 + u2) + 
         2*s2*u2*(s2 + u2)) - mmu^2*(2*q^4*(s2 + u2) + 
         (s2 + u2)*(s2^2 - 10*s2*u2 + u2^2)) + 
       mmu^4*(2*q^4 + 3*(s2^2 - 6*s2*u2 + u2^2))))/
     ((mmu^2 - s2)^2*(mmu^2 - u2)^2)
 
pseudovector2to2["\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\)"] = 
    (-2*(2*mBSM^4*stilde*utilde + 12*mmu^4*(stilde + utilde)^2 + 
       stilde*utilde*(2*q^4 + stilde^2 + utilde^2 - 
         2*q^2*(stilde + utilde)) - 
       mBSM^2*(2*stilde*utilde*(stilde + utilde) + 
         q^2*(stilde^2 - 4*stilde*utilde + utilde^2) + 
         2*mmu^2*(stilde^2 + 8*stilde*utilde + utilde^2)) + 
       2*mmu^2*(6*stilde*utilde*(stilde + utilde) + 
         q^2*(3*stilde^2 - 4*stilde*utilde + 3*utilde^2))))/
     (stilde^2*utilde^2)
 
pseudovector2to2[
     "\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\) near tmin"] = 
    -(-2*E0^6*thetaBSM^4*x^4*(4 + x*(-8 + (6 + thetaBSM^2 - 2*x)*x)) + 
       (mBSM^2*(-1 + x) - mmu^2*x^2)^2*(mBSM^2*(-2 + x)^2 - 
         4*mmu^2*(5 + x*(-5 + 2*x))) + E0^4*thetaBSM^2*x^2*
        (4*mmu^2*x^2*(thetaBSM^2*(-5 + (5 - 3*x)*x) + 2*(-1 + x)*
            (8 + (-8 + x)*x)) + mBSM^2*(-16 + 
           x*(48 + x*(-48 + x*(16 + thetaBSM^2*x))))) + 
       2*E0^2*(4*q^4*(-1 + x)^3*x^2 + mmu^4*x^4*
          (thetaBSM^2*(-20 + (20 - 9*x)*x) + 2*(-1 + x)*(2 + (-2 + x)*x)) - 
         mBSM^4*(-1 + x)*(-4 + x*(12 - 2*x*(7 + (-4 + x)*x) + 
             thetaBSM^2*x*(3 + (-3 + x)*x))) + mBSM^2*mmu^2*x^2*
          (-4*(-1 + x)^2*(2 + (-2 + x)*x) + thetaBSM^2*
            (-20 + x*(40 + x*(-26 + x*(6 + x)))))))/
     (2*(E0 - E0*x)^2*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2)
 
pseudovector2to2["\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\) on-shell"] = 
    (-2*(2*mBSM^4*stilde*utilde + 12*mmu^2*stilde*utilde*(stilde + utilde) + 
       12*mmu^4*(stilde + utilde)^2 + stilde*utilde*(2*q^4 + stilde^2 + 
         utilde^2) - mBSM^2*(2*stilde*utilde*(stilde + utilde) + 
         2*mmu^2*(stilde^2 + 8*stilde*utilde + utilde^2))))/
     (stilde^2*utilde^2)
 
pseudovector2to2[
     "\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\) on-shell near tmin"] = 
    (-2*(2*q^4*(-1 + x)^2*x^2 + mBSM^4*(-1 + x)^2*(2 + (-2 + x)*x) - 
       2*mBSM^2*(-1 + x)*x^2*(-2*E0^2*thetaBSM^2*(-1 + x) + 
         mmu^2*(2 + (-2 + x)*x)) + x^4*(2*E0^2*mmu^2*thetaBSM^2*
          (8 + (-8 + x)*x) + mmu^4*(2 + (-2 + x)*x) + E0^4*thetaBSM^4*
          (2 + (-2 + x)*x))))/((-1 + x)*
      (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2)
 
mmu[___] := mmu
tMinApproximations = {stilde -> -(utilde/(1 - x)), 
     utilde -> -((mBSM^2*(1 - x))/x) - mmu^2*x - E0^2*thetaBSM^2*x, 
     t2 -> mBSM^2 + (utilde*x)/(1 - x), q^2 -> -stilde^2/(4*E0^2)}
 
mmu[___] := mmu
