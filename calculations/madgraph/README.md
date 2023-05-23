# MadGraph for BSM BeamDump
This folder contains tools for studying BSM physics in a beam dump using MadGraph.

## Setup
There are several steps for the setup required for the use of the tools in this folder.

First, we will need for the appropriate model to be put into the MadGraph model folder (as in `path/to/main/FeynRules/model_generation/feynrules_to_models.nb`).

If you like, you can set up for python analysis by creating a virtual environment with the requirements included in the `path/to/main/setup` folder:
```
# Setting up the virtual environment
cd /path/to/main/
python3 -m venv env

# Adding to the PYTHONPATH in the virtual environment
echo "export PYTHONPATH=\"$PYTHONPATH:/Users/sam/Documents/Research/BeamDumpBSM/calculations/madgraph\"" >> env/bin/activate
echo "export PYTHONPATH=\"$PYTHONPATH:/Users/sam/Documents/Research/BeamDumpBSM/calculations/madgraph\"" >> env/bin/activate.fish

# Activating the virtual environment
source env/bin/activate.fish
# or
# source env/bin/activate

# Installing packages
python -m pip install -r setup/venv_requirements.txt
```

Finally, you should be able to get an example running fairly quickly with
```
cd calculations/madgraph/analyses/test_madgraph_generation
./run_madgraph.sh
```


### INCOMPLETE
I would love to be able to add
```python -m pip install calculations/madgraph```
to this, so that one can simply import the tools in `analyses/utils`, but it does not work for me...
