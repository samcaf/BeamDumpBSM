# This file was automatically created by FeynRules 2.3.49
# Mathematica version: 12.0.0 for Mac OS X x86 (64-bit) (April 7, 2019)
# Date: Thu 11 May 2023 18:41:14


from __future__ import division
from object_library import all_particles, Particle
import parameters as Param

import propagators as Prop

A = Particle(pdg_code = 22,
             name = 'A',
             antiname = 'A',
             spin = 3,
             color = 1,
             mass = Param.ZERO,
             width = Param.ZERO,
             texname = '\[Gamma]',
             antitexname = '\[Gamma]',
             charge = 0)

e = Particle(pdg_code = 11,
             name = 'e',
             antiname = 'e~',
             spin = 2,
             color = 1,
             mass = Param.mel,
             width = Param.ZERO,
             texname = 'Superscript[e,-]',
             antitexname = 'Superscript[e,+]',
             charge = -1)

e__tilde__ = e.anti()

mu = Particle(pdg_code = 13,
              name = 'mu',
              antiname = 'mu~',
              spin = 2,
              color = 1,
              mass = Param.mmu,
              width = Param.ZERO,
              texname = 'Superscript[\[Mu],-]',
              antitexname = 'Superscript[\[Mu],+]',
              charge = -1)

mu__tilde__ = mu.anti()

Ns = Particle(pdg_code = 994,
              name = 'Ns',
              antiname = 'Ns~',
              spin = 1,
              color = 1,
              mass = Param.ZERO,
              width = Param.ZERO,
              texname = 'Subscript[N,S]',
              antitexname = 'Ns~',
              charge = 1)

Ns__tilde__ = Ns.anti()

Nf = Particle(pdg_code = 995,
              name = 'Nf',
              antiname = 'Nf~',
              spin = 2,
              color = 1,
              mass = Param.ZERO,
              width = Param.ZERO,
              texname = 'Subscript[N,f]',
              antitexname = 'Nf~',
              charge = 1)

Nf__tilde__ = Nf.anti()

S = Particle(pdg_code = 996,
             name = 'S',
             antiname = 'S',
             spin = 1,
             color = 1,
             mass = Param.ZERO,
             width = Param.ZERO,
             texname = 'S',
             antitexname = 'S',
             charge = 0)

phi = Particle(pdg_code = 997,
               name = 'phi',
               antiname = 'phi',
               spin = 1,
               color = 1,
               mass = Param.ZERO,
               width = Param.ZERO,
               texname = '\[Phi]',
               antitexname = '\[Phi]',
               charge = 0)

V = Particle(pdg_code = 998,
             name = 'V',
             antiname = 'V',
             spin = 3,
             color = 1,
             mass = Param.ZERO,
             width = Param.ZERO,
             texname = '\[ScriptCapitalV]',
             antitexname = '\[ScriptCapitalV]',
             charge = 0)

U = Particle(pdg_code = 999,
             name = 'U',
             antiname = 'U',
             spin = 3,
             color = 1,
             mass = Param.ZERO,
             width = Param.ZERO,
             texname = '\[ScriptCapitalU]',
             antitexname = '\[ScriptCapitalU]',
             charge = 0)

