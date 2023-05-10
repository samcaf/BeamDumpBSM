# This file was automatically created by FeynRules 2.3.49
# Mathematica version: 12.0.0 for Mac OS X x86 (64-bit) (April 7, 2019)
# Date: Wed 10 May 2023 18:34:03


from object_library import all_decays, Decay
import particles as P


Decay_S = Decay(name = 'Decay_S',
                particle = P.S,
                partial_widths = {(P.e,P.e__tilde__):'((-8*mel**2*ySe**2 + 2*mS**2*ySe**2)*cmath.sqrt(-4*mel**2*mS**2 + mS**4))/(16.*cmath.pi*abs(mS)**3)',
                                  (P.mu,P.mu__tilde__):'((-8*mmu**2*ySmu**2 + 2*mS**2*ySmu**2)*cmath.sqrt(-4*mmu**2*mS**2 + mS**4))/(16.*cmath.pi*abs(mS)**3)'})

Decay_phi = Decay(name = 'Decay_phi',
                  particle = P.phi,
                  partial_widths = {(P.e,P.e__tilde__):'(mphi**2*yphie**2*cmath.sqrt(-4*mel**2*mphi**2 + mphi**4))/(8.*cmath.pi*abs(mphi)**3)',
                                    (P.mu,P.mu__tilde__):'(mphi**2*yphimu**2*cmath.sqrt(-4*mmu**2*mphi**2 + mphi**4))/(8.*cmath.pi*abs(mphi)**3)'})

Decay_V = Decay(name = 'Decay_V',
                particle = P.V,
                partial_widths = {(P.e,P.e__tilde__):'((8*gVel**2*mel**2 + 4*gVel**2*mV**2)*cmath.sqrt(-4*mel**2*mV**2 + mV**4))/(48.*cmath.pi*abs(mV)**3)',
                                  (P.mu,P.mu__tilde__):'((8*gVmu**2*mmu**2 + 4*gVmu**2*mV**2)*cmath.sqrt(-4*mmu**2*mV**2 + mV**4))/(48.*cmath.pi*abs(mV)**3)'})

Decay_U = Decay(name = 'Decay_U',
                particle = P.U,
                partial_widths = {(P.e,P.e__tilde__):'((-16*gUel**2*mel**2 + 4*gUel**2*mU**2)*cmath.sqrt(-4*mel**2*mU**2 + mU**4))/(48.*cmath.pi*abs(mU)**3)',
                                  (P.mu,P.mu__tilde__):'((-16*gUmu**2*mmu**2 + 4*gUmu**2*mU**2)*cmath.sqrt(-4*mmu**2*mU**2 + mU**4))/(48.*cmath.pi*abs(mU)**3)'})

