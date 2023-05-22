#! /bin/bash

# Running MadGraph to create a process directory
cd /Users/sam/Documents/Software/MG5_aMC_v3_5_0/
./bin/mg5_aMC /Users/sam/Documents/Research/BeamDumpBSM/calculations/madgraph/test/proc_card.dat

# Fixing possible width inconsistencies in parameter card
cd /Users/sam/Documents/Research/BeamDumpBSM/calculations/madgraph/
sed -i '' '/WA/d' ./combined_beamdump_test/Cards/param_card.dat
sed -i '' '/WA/d' ./combined_beamdump_test/Cards/param_card_default.dat

# Adding form factor function definitions in the process directory Fortran code
echo -e "      DOUBLE COMPLEX FFNUCLIDE_VSS" >> ./combined_beamdump_test/Source/MODEL/model_functions.inc
echo -e "      DOUBLE COMPLEX FFNUCLIDE_VVSS" >> ./combined_beamdump_test/Source/MODEL/model_functions.inc
echo -e "      DOUBLE COMPLEX FFNUCLIDE_FFV" >> ./combined_beamdump_test/Source/MODEL/model_functions.inc

# Generating events with MadEvent
./combined_beamdump_test/bin/madevent test/madevent_card.dat
