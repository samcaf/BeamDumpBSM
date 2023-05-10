# This file was automatically created by FeynRules 2.3.49
# Mathematica version: 12.0.0 for Mac OS X x86 (64-bit) (April 7, 2019)
# Date: Wed 10 May 2023 18:34:03



from object_library import all_parameters, Parameter


from function_library import complexconjugate, re, im, csc, sec, acsc, asec, cot

# This is a default parameter object representing 0.
ZERO = Parameter(name = 'ZERO',
                 nature = 'internal',
                 type = 'real',
                 value = '0.0',
                 texname = '0')

# User-defined parameters.
alphaEM = Parameter(name = 'alphaEM',
                    nature = 'external',
                    type = 'real',
                    value = 1,
                    texname = '\\alpha _{\\text{EM}}',
                    lhablock = 'FRBlock',
                    lhacode = [ 1 ])

ySe = Parameter(name = 'ySe',
                nature = 'external',
                type = 'real',
                value = 1,
                texname = 'y_{\\text{$\\unicode{f7c9}$e$\\unicode{f7c0}$}}',
                lhablock = 'FRBlock',
                lhacode = [ 2 ])

ySmu = Parameter(name = 'ySmu',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = 'y_{\\mu }',
                 lhablock = 'FRBlock',
                 lhacode = [ 3 ])

yphie = Parameter(name = 'yphie',
                  nature = 'external',
                  type = 'real',
                  value = 1,
                  texname = 'y_{\\text{$\\unicode{f7c9}$e$\\unicode{f7c0}$}}',
                  lhablock = 'FRBlock',
                  lhacode = [ 4 ])

yphimu = Parameter(name = 'yphimu',
                   nature = 'external',
                   type = 'real',
                   value = 1,
                   texname = 'y_{\\mu }',
                   lhablock = 'FRBlock',
                   lhacode = [ 5 ])

gPrimakoff = Parameter(name = 'gPrimakoff',
                       nature = 'external',
                       type = 'real',
                       value = 1,
                       texname = 'g_P',
                       lhablock = 'FRBlock',
                       lhacode = [ 6 ])

gVel = Parameter(name = 'gVel',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = 'g_{\\text{$\\mathcal{V}$e}}',
                 lhablock = 'FRBlock',
                 lhacode = [ 7 ])

gVmu = Parameter(name = 'gVmu',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = 'g_{\\mathcal{V}\\mu }',
                 lhablock = 'FRBlock',
                 lhacode = [ 8 ])

gUel = Parameter(name = 'gUel',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = 'g_{\\text{$\\mathcal{U}$e}}',
                 lhablock = 'FRBlock',
                 lhacode = [ 9 ])

gUmu = Parameter(name = 'gUmu',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = 'g_{\\mathcal{U}\\mu }',
                 lhablock = 'FRBlock',
                 lhacode = [ 10 ])

mel = Parameter(name = 'mel',
                nature = 'external',
                type = 'real',
                value = 0.000511,
                texname = '\\text{$\\unicode{f7c9}\\unicode{f7c1}\\unicode{f7c9}\\unicode{f7c8}$SubscriptBox[$\\unicode{f7c9}$m$\\unicode{f7c0}$, $\\unicode{f7c9}$e$\\unicode{f7c0}$]$\\unicode{f7c0}\\unicode{f7c0}$}',
                lhablock = 'MASS',
                lhacode = [ 11 ])

mmu = Parameter(name = 'mmu',
                nature = 'external',
                type = 'real',
                value = 0.10566,
                texname = '\\text{$\\unicode{f7c9}\\unicode{f7c1}\\unicode{f7c9}\\unicode{f7c8}$SubscriptBox[$\\unicode{f7c9}$m$\\unicode{f7c0}$, $\\unicode{f7c9}\\mu \\unicode{f7c0}$]$\\unicode{f7c0}\\unicode{f7c0}$}',
                lhablock = 'MASS',
                lhacode = [ 13 ])

Mi = Parameter(name = 'Mi',
               nature = 'external',
               type = 'real',
               value = 1,
               texname = '\\text{$\\unicode{f7c9}\\unicode{f7c1}\\unicode{f7c9}\\unicode{f7c8}$SubscriptBox[$\\unicode{f7c9}$M$\\unicode{f7c0}$, $\\unicode{f7c9}$i$\\unicode{f7c0}$]$\\unicode{f7c0}\\unicode{f7c0}$}',
               lhablock = 'MASS',
               lhacode = [ 995 ])

mS = Parameter(name = 'mS',
               nature = 'external',
               type = 'real',
               value = 1,
               texname = '\\text{$\\unicode{f7c9}\\unicode{f7c1}\\unicode{f7c9}\\unicode{f7c8}$SubscriptBox[$\\unicode{f7c9}$m$\\unicode{f7c0}$, $\\unicode{f7c9}$S$\\unicode{f7c0}$]$\\unicode{f7c0}\\unicode{f7c0}$}',
               lhablock = 'MASS',
               lhacode = [ 996 ])

mphi = Parameter(name = 'mphi',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = '\\text{$\\unicode{f7c9}\\unicode{f7c1}\\unicode{f7c9}\\unicode{f7c8}$SubscriptBox[$\\unicode{f7c9}$m$\\unicode{f7c0}$, $\\unicode{f7c9}\\phi \\unicode{f7c0}$]$\\unicode{f7c0}\\unicode{f7c0}$}',
                 lhablock = 'MASS',
                 lhacode = [ 997 ])

mV = Parameter(name = 'mV',
               nature = 'external',
               type = 'real',
               value = 1,
               texname = '\\text{$\\unicode{f7c9}\\unicode{f7c1}\\unicode{f7c9}\\unicode{f7c8}$SubscriptBox[$\\unicode{f7c9}$m$\\unicode{f7c0}$, $\\unicode{f7c9}\\mathcal{V}\\unicode{f7c0}$]$\\unicode{f7c0}\\unicode{f7c0}$}',
               lhablock = 'MASS',
               lhacode = [ 998 ])

mU = Parameter(name = 'mU',
               nature = 'external',
               type = 'real',
               value = 1,
               texname = '\\text{$\\unicode{f7c9}\\unicode{f7c1}\\unicode{f7c9}\\unicode{f7c8}$SubscriptBox[$\\unicode{f7c9}$m$\\unicode{f7c0}$, $\\unicode{f7c9}\\mathcal{U}\\unicode{f7c0}$]$\\unicode{f7c0}\\unicode{f7c0}$}',
               lhablock = 'MASS',
               lhacode = [ 999 ])

WA = Parameter(name = 'WA',
               nature = 'external',
               type = 'real',
               value = 1,
               texname = '\\text{WA}',
               lhablock = 'DECAY',
               lhacode = [ 22 ])

ee = Parameter(name = 'ee',
               nature = 'internal',
               type = 'real',
               value = '2*cmath.sqrt(alphaEM)*cmath.sqrt(cmath.pi)',
               texname = '\\text{$\\unicode{f7c9}$e$\\unicode{f7c0}$}')

