double complex function FFNuclide_VSS(t)
    implicit none
    double complex t
    FFNuclide_VSS = sqrt((3.924305367838731e22*t**2)/((1. + 197.14366506136577*t)**2*(1. + 2.67700805204905e9*t)**2) + (4.0146544964586963e21*t**2*(1. + 1.9276428548697275*t)**2)/((1. + 1.4084507042253522*t)**8*(1. + 7.365601658383542e9*t)**2))
return
end function FFNuclide_VSS


double complex function FFNuclide_VVSS(t)
    implicit none
    double complex t
    FFNuclide_VVSS = (sqrt((3.924305367838731e22*t**2)/((1. + 197.14366506136577*t)**2*(1. + 2.67700805204905e9*t)**2) + (4.0146544964586963e21*t**2*(1. + 1.9276428548697275*t)**2)/((1. + 1.4084507042253522*t)**8*(1. + 7.365601658383542e9*t)**2)))**2
return
end


double complex function FFNuclide_FFV(t)
    implicit none
    double complex t
    FFNuclide_FFV = 0
return
end
