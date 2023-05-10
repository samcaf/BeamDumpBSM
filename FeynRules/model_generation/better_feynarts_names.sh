#!/usr/bin/env fish

# ===========================
# Field names (all files)
# ===========================
for model in scalar pseudoscalar vector pseudovector;
    set bsm_model_file $feynarts_model_dir/$model'_mubeamdump.mod'
    sed -i -e 's|\"A\"|\"\\\\\\\\gamma\"|g' $bsm_model_file
    sed -i -e 's|\"mu\"|\"\\\\\\\\mu\"|g' $bsm_model_file
    sed -i -e 's|\"phi\"|\"\\\\\\\\phi\"|g' $bsm_model_file
    sed -i -e 's|\"Nscalar\"|\"Nucleon S\"|g' $bsm_model_file
    sed -i -e 's|\"Nfermion\"|\"Nucleon F\"|g' $bsm_model_file
end

# ===========================
# Coupling Names, 2 to 2
# ===========================

# ----------------------
# Scalar
# ----------------------
for model in scalar;
    set bsm_model_file $feynarts_model_dir/$model'_mubeamdump.mod'
    # BSM Couplings
    sed -i -e 's|gc1|gel|g' $bsm_model_file
    sed -i -e 's|gc2|gmu|g' $bsm_model_file
    # QED Couplings
    sed -i -e 's|gc3|e|g' $bsm_model_file
    sed -i -e 's|gc4|e|g' $bsm_model_file
end

# ----------------------
# Pseudoscalar
# ----------------------
# Treating pseudoscalar differently because we have an additional (Primakoff) coupling
for model in pseudoscalar;
    set bsm_model_file $feynarts_model_dir/$model'_mubeamdump.mod'
    # Gamma5 BSM Couplings
    sed -i -e 's|I\\*gc2L|-I\\*gel|g' $bsm_model_file
    sed -i -e 's|gc2R|gel|g' $bsm_model_file
    sed -i -e '/gc2L/d' $bsm_model_file
    sed -i -e 's|I\\*gc3L|-I\\*gmu|g' $bsm_model_file
    sed -i -e 's|gc3R|gmu|g' $bsm_model_file
    sed -i -e '/gc3L/d' $bsm_model_file
    # QED Couplings
    sed -i -e 's|gc4|e|g' $bsm_model_file
    sed -i -e 's|gc5|e|g' $bsm_model_file
end

# ----------------------
# Vector
# ----------------------
for model in vector;
    set bsm_model_file $feynarts_model_dir/$model'_mubeamdump.mod'
    # BSM Couplings
    sed -i -e 's|gc3|gel|g' $bsm_model_file
    sed -i -e 's|gc4|gmu|g' $bsm_model_file
    # QED Couplings
    sed -i -e 's|gc1|e|g' $bsm_model_file
    sed -i -e 's|gc2|e|g' $bsm_model_file
end

# ----------------------
# Pseudo-Vector
# ----------------------
for model in pseudovector;
    set bsm_model_file $feynarts_model_dir/$model'_mubeamdump.mod'
    # Gamma5 BSM Couplings
    sed -i -e 's|{gc3L|{-gel|g' $bsm_model_file
    sed -i -e 's|{gc4L|{-gmu|g' $bsm_model_file
    sed -i -e '/gc3L/d' $bsm_model_file
    sed -i -e '/gc4L/d' $bsm_model_file
    sed -i -e 's|gc3R|gel|g' $bsm_model_file
    sed -i -e 's|gc4R|gmu|g' $bsm_model_file
    # QED Couplings
    sed -i -e 's|gc1|e|g' $bsm_model_file
    sed -i -e 's|gc2|e|g' $bsm_model_file
end
