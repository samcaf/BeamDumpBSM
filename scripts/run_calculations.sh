#!/usr/bin/env fish

# Run from main directory

# =====================================
# Running Calculations
# =====================================

# -------------------------
# 2 to 2
# -------------------------
wolframscript -script "$2to2_calc_dir/scalar_2to2.m"
wolframscript -script "$2to2_calc_dir/pseudoscalar_2to2.m"
wolframscript -script "$2to2_calc_dir/vector_2to2.m"
wolframscript -script "$2to2_calc_dir/pseudovector_2to2.m"

# -------------------------
# 2 to 3
# -------------------------
# In progress
