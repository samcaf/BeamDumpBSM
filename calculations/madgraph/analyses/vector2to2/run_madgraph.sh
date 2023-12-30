#! /bin/bash

# ####################################
# Setup
# ####################################

# =====================================
# User-dependent file locations
# =====================================
export mg5_folder="/Users/sam/Documents/Software/MG5_aMC_v3_5_0/"
export main_folder="/Users/sam/Documents/Research/BeamDumpBSM/calculations/madgraph/"

# =====================================
# User-independent file locations
# =====================================
# ---------------------------------
# Main folders
# ---------------------------------
export analysis_folder=$main_folder"/analyses/"
export process_folder=$main_folder"/processes/"

# ---------------------------------
# Process and analysis folders for this analysis
# ---------------------------------
export this_analysis_folder=$analysis_folder"/vector2to2/"
export this_process_folder=$process_folder"/vector2to2/"

# ---------------------------------
# Card locations
# ---------------------------------
export proc_card=$this_analysis_folder"/cards/proc_card.dat"
export madevent_card=$this_analysis_folder"/cards/madevent_card.dat"


# ####################################
# Pipeline
# ####################################

# =====================================
# MadGraph
# =====================================

# Running MadGraph to create a process directory
cd $mg5_folder
./bin/mg5_aMC $proc_card

# Fixing possible width inconsistencies in parameter card
cd $this_process_folder
sed -i '' '/WA/d' ./Cards/param_card.dat
sed -i '' '/WA/d' ./Cards/param_card_default.dat

# Adding form factor function definitions in the process directory Fortran code
echo -e "      DOUBLE COMPLEX FFNUCLIDE_VSS" >> ./Source/MODEL/model_functions.inc
echo -e "      DOUBLE COMPLEX FFNUCLIDE_VVSS" >> ./Source/MODEL/model_functions.inc
echo -e "      DOUBLE COMPLEX FFNUCLIDE_FFV" >> ./Source/MODEL/model_functions.inc

# Generating events with MadEvent
./bin/madevent $madevent_card

# =====================================
# Analysis
# =====================================

# Returning to the analysis directory for further manipulation
cd $this_analysis_folder

# converting LHE files to numpy files
python3 lhe_to_python.py

# Analyzing numpy files to produce plots
python3 generate_plots.py

# Open plots
open plots
