vector2to2["\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\)"] = 
    (4*alphaEM^2*epsmu^2*Pi*((mBSM^2 + 2*mmu^2)*(2*mmu^2 + q^2)*stilde^2 - 
       stilde*(-8*mmu^4 + 2*(mBSM^2 + q^2)^2 - 2*(mBSM^2 + 2*mmu^2 + q^2)*
          stilde + stilde^2)*utilde + (2*(2*mmu^2 + q^2)*(mmu^2 + stilde) + 
         mBSM^2*(2*mmu^2 + q^2 + 2*stilde))*utilde^2 - stilde*utilde^3))/
     (stilde^4*utilde^2)
 
vector2to2[
     "\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\) near tmin"] = 
    (4*alphaEM^2*epsmu^2*Pi*(-1 + x)^2*
      (-(((-1 + x)*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2)/
         x^2) + (mBSM^2 + 2*mmu^2)*(2*mmu^2 - 
         (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
          (4*E0^2*(-1 + x)^2*x^2)) + (1 - x)*(-8*mmu^4 + 
         (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
          ((-1 + x)^2*x^2) + 
         2*(mBSM^2 - (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
             (4*E0^2*(-1 + x)^2*x^2))^2 + 
         (2*((mBSM^2*(-1 + x))/x - (mmu^2 + E0^2*thetaBSM^2)*x)*
           (mBSM^2 + 2*mmu^2 - (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*
                x^2)^2/(4*E0^2*(-1 + x)^2*x^2)))/(1 - x)) - 
       (2*(-(mBSM^2*(-1 + x)) + x*(mmu^2 + E0^2*thetaBSM^2*x))*
          (8*E0^2*mmu^2*(-1 + x)^2*x^2 - (mBSM^2*(-1 + x) - 
             (mmu^2 + E0^2*thetaBSM^2)*x^2)^2) + mBSM^2*(1 - x)*x*
          (8*E0^2*mmu^2*(-1 + x)^2*x^2 - (mBSM^2*(-1 + x) - 
             (mmu^2 + E0^2*thetaBSM^2)*x^2)^2 - 8*E0^2*(-1 + x)*x*
            (-(mBSM^2*(-1 + x)) + (mmu^2 + E0^2*thetaBSM^2)*x^2)))/
        (4*E0^2*(-1 + x)*x^3)))/((mBSM^2*(-1 + x))/x - 
       (mmu^2 + E0^2*thetaBSM^2)*x)^4
 
vector2to2[
     "\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\) on-shell"] = 
    (4*alphaEM^2*epsmu^2*Pi*(2*mmu^2*(mBSM^2 + 2*mmu^2)*stilde^2 - 
       stilde*(2*mBSM^4 - 8*mmu^4 - 2*(mBSM^2 + 2*mmu^2)*stilde + stilde^2)*
        utilde + (4*mmu^2*(mmu^2 + stilde) + mBSM^2*(2*mmu^2 + 2*stilde))*
        utilde^2 - stilde*utilde^3))/(stilde^4*utilde^2)
 
vector2to2[
     "\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\) on-shell near \
tmin"] = (-4*alphaEM^2*epsmu^2*Pi*(-1 + x)*x^2*
      (mBSM^4*(-1 + x)^2*(2 + (-2 + x)*x) - 2*mBSM^2*(-1 + x)*x^2*
        (-2*E0^2*thetaBSM^2*(-1 + x) + mmu^2*(2 + (-2 + x)*x)) + 
       x^4*(2*E0^2*mmu^2*thetaBSM^2*x^2 + mmu^4*(2 + (-2 + x)*x) + 
         E0^4*thetaBSM^4*(2 + (-2 + x)*x))))/
     (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^4
 
vector2to2["Squared, Spin-Averaged Matrix Element"] = 
    (2*e^2*gmu^2*(6*mmu^8 - 2*mBSM^4*(mmu^2 - s2)*(mmu^2 - u2) - 
       s2*u2*(2*q^4 + s2^2 + u2^2 - 2*q^2*(s2 + u2)) - 
       mmu^4*(2*q^4 + 3*s2^2 + 14*s2*u2 + 3*u2^2 - 2*q^2*(s2 + u2)) + 
       mmu^2*(-8*q^2*s2*u2 + 2*q^4*(s2 + u2) + (s2 + u2)*(s2^2 + 6*s2*u2 + 
           u2^2)) + mBSM^2*(2*s2*u2*(s2 + u2) + 2*mmu^4*(-q^2 + s2 + u2) + 
         q^2*(s2^2 - 4*s2*u2 + u2^2) + 2*mmu^2*(-4*s2*u2 + q^2*(s2 + u2)))))/
     ((mmu^2 - s2)^2*(mmu^2 - u2)^2)
 
vector2to2["Squared, Spin-Averaged Matrix Element on-shell"] = 
    var["Squared, Spin-Averaged Matrix Element on-shell"]
 
vector2to2["\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\)"] = 
    (2*((mBSM^2 + 2*mmu^2)*(2*mmu^2 + q^2)*stilde^2 - 
       stilde*(-8*mmu^4 + 2*(mBSM^2 + q^2)^2 - 2*(mBSM^2 + 2*mmu^2 + q^2)*
          stilde + stilde^2)*utilde + (2*(2*mmu^2 + q^2)*(mmu^2 + stilde) + 
         mBSM^2*(2*mmu^2 + q^2 + 2*stilde))*utilde^2 - stilde*utilde^3))/
     (stilde^2*utilde^2)
 
vector2to2["\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\) near tmin"] = 
    (2*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2*
      (-(((-1 + x)*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2)/
         x^2) + (mBSM^2 + 2*mmu^2)*(2*mmu^2 - 
         (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
          (4*E0^2*(-1 + x)^2*x^2)) + (1 - x)*(-8*mmu^4 + 
         (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
          ((-1 + x)^2*x^2) + 
         2*(mBSM^2 - (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
             (4*E0^2*(-1 + x)^2*x^2))^2 + 
         (2*((mBSM^2*(-1 + x))/x - (mmu^2 + E0^2*thetaBSM^2)*x)*
           (mBSM^2 + 2*mmu^2 - (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*
                x^2)^2/(4*E0^2*(-1 + x)^2*x^2)))/(1 - x)) - 
       (2*(-(mBSM^2*(-1 + x)) + x*(mmu^2 + E0^2*thetaBSM^2*x))*
          (8*E0^2*mmu^2*(-1 + x)^2*x^2 - (mBSM^2*(-1 + x) - 
             (mmu^2 + E0^2*thetaBSM^2)*x^2)^2) + mBSM^2*(1 - x)*x*
          (8*E0^2*mmu^2*(-1 + x)^2*x^2 - (mBSM^2*(-1 + x) - 
             (mmu^2 + E0^2*thetaBSM^2)*x^2)^2 - 8*E0^2*(-1 + x)*x*
            (-(mBSM^2*(-1 + x)) + (mmu^2 + E0^2*thetaBSM^2)*x^2)))/
        (4*E0^2*(-1 + x)*x^3)))/
     (x^2*((mBSM^2*(-1 + x))/x - (mmu^2 + E0^2*thetaBSM^2)*x)^4)
 
vector2to2["\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\) on-shell"] = 
    (2*(2*mmu^2*(mBSM^2 + 2*mmu^2)*stilde^2 - 
       stilde*(2*mBSM^4 - 8*mmu^4 - 2*(mBSM^2 + 2*mmu^2)*stilde + stilde^2)*
        utilde + (4*mmu^2*(mmu^2 + stilde) + mBSM^2*(2*mmu^2 + 2*stilde))*
        utilde^2 - stilde*utilde^3))/(stilde^2*utilde^2)
 
vector2to2[
     "\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\) on-shell near tmin"] = 
    (-2*(mBSM^4*(-1 + x)^2*(2 + (-2 + x)*x) - 2*mBSM^2*(-1 + x)*x^2*
        (-2*E0^2*thetaBSM^2*(-1 + x) + mmu^2*(2 + (-2 + x)*x)) + 
       x^4*(2*E0^2*mmu^2*thetaBSM^2*x^2 + mmu^4*(2 + (-2 + x)*x) + 
         E0^4*thetaBSM^4*(2 + (-2 + x)*x))))/
     ((-1 + x)*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2)
 
mmu[___] := mmu
 
var["\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\)"] = 
    (4*alphaEM^2*epsmu^2*Pi*((mBSM^2 + 2*mmu^2)*(2*mmu^2 + q^2)*stilde^2 - 
       stilde*(-8*mmu^4 + 2*(mBSM^2 + q^2)^2 - 2*(mBSM^2 + 2*mmu^2 + q^2)*
          stilde + stilde^2)*utilde + (2*(2*mmu^2 + q^2)*(mmu^2 + stilde) + 
         mBSM^2*(2*mmu^2 + q^2 + 2*stilde))*utilde^2 - stilde*utilde^3))/
     (stilde^4*utilde^2)
 
var["\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\) near tmin"] = 
    (4*alphaEM^2*epsmu^2*Pi*(-1 + x)^2*
      (-(((-1 + x)*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2)/
         x^2) + (mBSM^2 + 2*mmu^2)*(2*mmu^2 - 
         (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
          (4*E0^2*(-1 + x)^2*x^2)) + (1 - x)*(-8*mmu^4 + 
         (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
          ((-1 + x)^2*x^2) + 
         2*(mBSM^2 - (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
             (4*E0^2*(-1 + x)^2*x^2))^2 + 
         (2*((mBSM^2*(-1 + x))/x - (mmu^2 + E0^2*thetaBSM^2)*x)*
           (mBSM^2 + 2*mmu^2 - (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*
                x^2)^2/(4*E0^2*(-1 + x)^2*x^2)))/(1 - x)) - 
       (2*(-(mBSM^2*(-1 + x)) + x*(mmu^2 + E0^2*thetaBSM^2*x))*
          (8*E0^2*mmu^2*(-1 + x)^2*x^2 - (mBSM^2*(-1 + x) - 
             (mmu^2 + E0^2*thetaBSM^2)*x^2)^2) + mBSM^2*(1 - x)*x*
          (8*E0^2*mmu^2*(-1 + x)^2*x^2 - (mBSM^2*(-1 + x) - 
             (mmu^2 + E0^2*thetaBSM^2)*x^2)^2 - 8*E0^2*(-1 + x)*x*
            (-(mBSM^2*(-1 + x)) + (mmu^2 + E0^2*thetaBSM^2)*x^2)))/
        (4*E0^2*(-1 + x)*x^3)))/((mBSM^2*(-1 + x))/x - 
       (mmu^2 + E0^2*thetaBSM^2)*x)^4
 
var["\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\) on-shell"] = 
    (4*alphaEM^2*epsmu^2*Pi*(2*mmu^2*(mBSM^2 + 2*mmu^2)*stilde^2 - 
       stilde*(2*mBSM^4 - 8*mmu^4 - 2*(mBSM^2 + 2*mmu^2)*stilde + stilde^2)*
        utilde + (4*mmu^2*(mmu^2 + stilde) + mBSM^2*(2*mmu^2 + 2*stilde))*
        utilde^2 - stilde*utilde^3))/(stilde^4*utilde^2)
 
var[
     "\!\(\*FractionBox[\(d\[Sigma]\), \(d \((p . k)\)\)]\) on-shell near tmin"\
] = (-4*alphaEM^2*epsmu^2*Pi*(-1 + x)*x^2*
      (mBSM^4*(-1 + x)^2*(2 + (-2 + x)*x) - 2*mBSM^2*(-1 + x)*x^2*
        (-2*E0^2*thetaBSM^2*(-1 + x) + mmu^2*(2 + (-2 + x)*x)) + 
       x^4*(2*E0^2*mmu^2*thetaBSM^2*x^2 + mmu^4*(2 + (-2 + x)*x) + 
         E0^4*thetaBSM^4*(2 + (-2 + x)*x))))/
     (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^4
 
var["\!\(\*FractionBox[\(d\[Sigma]\), SubscriptBox[\(dt\), \(2\)]]\)"] = 
    (2*alphaEM^2*epsmu^2*Pi*((mBSM^2 + 2*mmu^2)*(2*mmu^2 + q^2)*stilde^2 - 
       stilde*(-8*mmu^4 + 2*(mBSM^2 + q^2)^2 - 2*(mBSM^2 + 2*mmu^2 + q^2)*
          stilde + stilde^2)*utilde + (2*(2*mmu^2 + q^2)*(mmu^2 + stilde) + 
         mBSM^2*(2*mmu^2 + q^2 + 2*stilde))*utilde^2 - stilde*utilde^3))/
     (stilde^4*utilde^2)
 
var["Squared, Spin-Averaged Matrix Element"] = 
    (2*e^2*gmu^2*(6*mmu^8 - 2*mBSM^4*(mmu^2 - s2)*(mmu^2 - u2) - 
       s2*u2*(2*q^4 + s2^2 + u2^2 - 2*q^2*(s2 + u2)) - 
       mmu^4*(2*q^4 + 3*s2^2 + 14*s2*u2 + 3*u2^2 - 2*q^2*(s2 + u2)) + 
       mmu^2*(-8*q^2*s2*u2 + 2*q^4*(s2 + u2) + (s2 + u2)*(s2^2 + 6*s2*u2 + 
           u2^2)) + mBSM^2*(2*s2*u2*(s2 + u2) + 2*mmu^4*(-q^2 + s2 + u2) + 
         q^2*(s2^2 - 4*s2*u2 + u2^2) + 2*mmu^2*(-4*s2*u2 + q^2*(s2 + u2)))))/
     ((mmu^2 - s2)^2*(mmu^2 - u2)^2)
 
var["\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\)"] = 
    (2*((mBSM^2 + 2*mmu^2)*(2*mmu^2 + q^2)*stilde^2 - 
       stilde*(-8*mmu^4 + 2*(mBSM^2 + q^2)^2 - 2*(mBSM^2 + 2*mmu^2 + q^2)*
          stilde + stilde^2)*utilde + (2*(2*mmu^2 + q^2)*(mmu^2 + stilde) + 
         mBSM^2*(2*mmu^2 + q^2 + 2*stilde))*utilde^2 - stilde*utilde^3))/
     (stilde^2*utilde^2)
 
var["\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\) near tmin"] = 
    (2*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2*
      (-(((-1 + x)*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2)/
         x^2) + (mBSM^2 + 2*mmu^2)*(2*mmu^2 - 
         (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
          (4*E0^2*(-1 + x)^2*x^2)) + (1 - x)*(-8*mmu^4 + 
         (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
          ((-1 + x)^2*x^2) + 
         2*(mBSM^2 - (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2/
             (4*E0^2*(-1 + x)^2*x^2))^2 + 
         (2*((mBSM^2*(-1 + x))/x - (mmu^2 + E0^2*thetaBSM^2)*x)*
           (mBSM^2 + 2*mmu^2 - (mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*
                x^2)^2/(4*E0^2*(-1 + x)^2*x^2)))/(1 - x)) - 
       (2*(-(mBSM^2*(-1 + x)) + x*(mmu^2 + E0^2*thetaBSM^2*x))*
          (8*E0^2*mmu^2*(-1 + x)^2*x^2 - (mBSM^2*(-1 + x) - 
             (mmu^2 + E0^2*thetaBSM^2)*x^2)^2) + mBSM^2*(1 - x)*x*
          (8*E0^2*mmu^2*(-1 + x)^2*x^2 - (mBSM^2*(-1 + x) - 
             (mmu^2 + E0^2*thetaBSM^2)*x^2)^2 - 8*E0^2*(-1 + x)*x*
            (-(mBSM^2*(-1 + x)) + (mmu^2 + E0^2*thetaBSM^2)*x^2)))/
        (4*E0^2*(-1 + x)*x^3)))/
     (x^2*((mBSM^2*(-1 + x))/x - (mmu^2 + E0^2*thetaBSM^2)*x)^4)
 
var["\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\) on-shell"] = 
    (2*(2*mmu^2*(mBSM^2 + 2*mmu^2)*stilde^2 - 
       stilde*(2*mBSM^4 - 8*mmu^4 - 2*(mBSM^2 + 2*mmu^2)*stilde + stilde^2)*
        utilde + (4*mmu^2*(mmu^2 + stilde) + mBSM^2*(2*mmu^2 + 2*stilde))*
        utilde^2 - stilde*utilde^3))/(stilde^2*utilde^2)
 
var["\!\(\*SuperscriptBox[\(A\), \(2 \[Rule] 2\)]\) on-shell near tmin"] = 
    (-2*(mBSM^4*(-1 + x)^2*(2 + (-2 + x)*x) - 2*mBSM^2*(-1 + x)*x^2*
        (-2*E0^2*thetaBSM^2*(-1 + x) + mmu^2*(2 + (-2 + x)*x)) + 
       x^4*(2*E0^2*mmu^2*thetaBSM^2*x^2 + mmu^4*(2 + (-2 + x)*x) + 
         E0^4*thetaBSM^4*(2 + (-2 + x)*x))))/
     ((-1 + x)*(mBSM^2*(-1 + x) - (mmu^2 + E0^2*thetaBSM^2)*x^2)^2)

tMinApproximations = {stilde -> -(utilde/(1 - x)), 
     utilde -> -((mBSM^2*(1 - x))/x) - mmu^2*x - E0^2*thetaBSM^2*x, 
     t2 -> mBSM^2 + (utilde*x)/(1 - x), q^2 -> -stilde^2/(4*E0^2)}
 
mmu[___] := mmu
