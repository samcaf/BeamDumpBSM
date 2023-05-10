# This file was automatically created by FeynRules 2.3.49
# Mathematica version: 12.0.0 for Mac OS X x86 (64-bit) (April 7, 2019)
# Date: Wed 10 May 2023 18:34:03


from object_library import all_lorentz, Lorentz

from function_library import complexconjugate, re, im, csc, sec, acsc, asec, cot
try:
   import form_factors as ForFac 
except ImportError:
   pass


FFS1 = Lorentz(name = 'FFS1',
               spins = [ 2, 2, 1 ],
               structure = 'Gamma5(2,1)')

FFS2 = Lorentz(name = 'FFS2',
               spins = [ 2, 2, 1 ],
               structure = 'Identity(2,1)')

FFV1 = Lorentz(name = 'FFV1',
               spins = [ 2, 2, 3 ],
               structure = 'Gamma(3,2,1)')

FFV2 = Lorentz(name = 'FFV2',
               spins = [ 2, 2, 3 ],
               structure = 'Gamma5(-1,1)*Gamma(3,2,-1)')

VSS1 = Lorentz(name = 'VSS1',
               spins = [ 3, 1, 1 ],
               structure = 'P(1,2) - P(1,3)')

VVSS1 = Lorentz(name = 'VVSS1',
                spins = [ 3, 3, 1, 1 ],
                structure = 'Metric(1,2)')


# Form Factors

FormFactor_VSS1 = Lorentz(
                 name = 'FormFactor_VSS1',
                 spins = [3, 1, 1],
				 structure = 'FFNuclide_VSS*(P(1,2) - P(1,3))',
                 formfactors=[ForFac.FFNuclide_VSS])

FormFactor_FFV1 = Lorentz(
                 name = 'FormFactor_FFV1',
                 spins = [2, 2, 3],
				 structure = 'FFNuclide_FFV*Gamma(3,2,1)',
                 formfactors=[ForFac.FFNuclide_FFV])

FormFactor_VVSS1 = Lorentz(
                 name = 'FormFactor_VVSS1',
                 spins = [3, 3, 1, 1],
				 structure = 'FFNuclide_VVSS*Metric(1,2)',
                 formfactors=[ForFac.FFNuclide_VVSS])

