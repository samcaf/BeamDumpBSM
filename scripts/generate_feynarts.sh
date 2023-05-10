#!/usr/bin/env fish

wolframscript -script $feynarts_setup_dir/generate_feynarts_scalar.m
wolframscript -script $feynarts_setup_dir/generate_feynarts_pseudoscalar.m
wolframscript -script $feynarts_setup_dir/generate_feynarts_vector.m
wolframscript -script $feynarts_setup_dir/generate_feynarts_pseudovector.m

wolframscript -script $feynarts_setup_dir/generate_feynarts_nuclide.m

cd $feynarts_setup_dir
./better_names.sh
