# This file was automatically created by FeynRules 2.3.49
# Mathematica version: 12.0.0 for Mac OS X x86 (64-bit) (April 7, 2019)
# Date: Mon 22 May 2023 19:38:04


from object_library import all_vertices, Vertex
import particles as P
import couplings as C
import lorentz as L


V_1 = Vertex(name = 'V_1',
             particles = [ P.A, P.A, P.Ns__tilde__, P.Ns ],
             color = [ '1' ],
             lorentz = [ L.FormFactor_VVSS1 ],
             couplings = {(0,0):C.GC_3})

V_2 = Vertex(name = 'V_2',
             particles = [ P.A, P.Ns__tilde__, P.Ns ],
             color = [ '1' ],
             lorentz = [ L.FormFactor_VSS1 ],
             couplings = {(0,0):C.GC_1})

V_3 = Vertex(name = 'V_3',
             particles = [ P.e__tilde__, P.e, P.S ],
             color = [ '1' ],
             lorentz = [ L.FFS2 ],
             couplings = {(0,0):C.GC_10})

V_4 = Vertex(name = 'V_4',
             particles = [ P.mu__tilde__, P.mu, P.S ],
             color = [ '1' ],
             lorentz = [ L.FFS2 ],
             couplings = {(0,0):C.GC_11})

V_5 = Vertex(name = 'V_5',
             particles = [ P.e__tilde__, P.e, P.phi ],
             color = [ '1' ],
             lorentz = [ L.FFS1 ],
             couplings = {(0,0):C.GC_8})

V_6 = Vertex(name = 'V_6',
             particles = [ P.mu__tilde__, P.mu, P.phi ],
             color = [ '1' ],
             lorentz = [ L.FFS1 ],
             couplings = {(0,0):C.GC_9})

V_7 = Vertex(name = 'V_7',
             particles = [ P.e__tilde__, P.e, P.A ],
             color = [ '1' ],
             lorentz = [ L.FFV1 ],
             couplings = {(0,0):C.GC_1})

V_8 = Vertex(name = 'V_8',
             particles = [ P.mu__tilde__, P.mu, P.A ],
             color = [ '1' ],
             lorentz = [ L.FFV1 ],
             couplings = {(0,0):C.GC_1})

V_9 = Vertex(name = 'V_9',
             particles = [ P.Nf__tilde__, P.Nf, P.A ],
             color = [ '1' ],
             lorentz = [ L.FFV1 ],
             couplings = {(0,0):C.GC_2})

V_10 = Vertex(name = 'V_10',
              particles = [ P.e__tilde__, P.e, P.V ],
              color = [ '1' ],
              lorentz = [ L.FFV1 ],
              couplings = {(0,0):C.GC_6})

V_11 = Vertex(name = 'V_11',
              particles = [ P.mu__tilde__, P.mu, P.V ],
              color = [ '1' ],
              lorentz = [ L.FFV1 ],
              couplings = {(0,0):C.GC_7})

V_12 = Vertex(name = 'V_12',
              particles = [ P.e__tilde__, P.e, P.U ],
              color = [ '1' ],
              lorentz = [ L.FFV2 ],
              couplings = {(0,0):C.GC_4})

V_13 = Vertex(name = 'V_13',
              particles = [ P.mu__tilde__, P.mu, P.U ],
              color = [ '1' ],
              lorentz = [ L.FFV2 ],
              couplings = {(0,0):C.GC_5})

