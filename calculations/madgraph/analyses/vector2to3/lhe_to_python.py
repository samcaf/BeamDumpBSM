import os
import numpy as np

def lhe2npy(npy_file_name, lhe_file_name="unweighted_events",
            incl_in=False, incl_mid=False, incl_out=True):
    """Converts an lhe file to numpy format using the LHEtoPython
    script, in this same directory.
    From https://github.com/ymzhong/mg5_aMC_tutorial/blob/main/analysis_LHE_output.ipynb
    """
    incl_in_str = str(int(incl_in))
    incl_mid_str = str(int(incl_mid))
    incl_out_str = str(int(incl_out))
    output_file = "temp.dat"
    os.system("gunzip " + lhe_file_name + ".lhe.gz")
    os.system("./../utils/LHEtoPython.sh " + lhe_file_name + ".lhe " + incl_in_str +
              " " + incl_mid_str + " "+ incl_out_str + " >> " + output_file)
    with open(output_file, 'r') as f:
        text = f.read()
        for rep in (('{','['),('}',']')):
            text = text.replace(rep[0],rep[1])
        array = eval(text)
        particle_data = np.array(array)

    np.save(npy_file_name, particle_data)
    # check file size
    if os.path.getsize(npy_file_name + ".npy") > 0:
        print("successfully converted " + lhe_file_name + ".lhe to " + npy_file_name + ".npy")
    else:
        print("failed to convert " + lhe_file_name + ".lhe to " + npy_file_name + ".npy")
    # remove the temp file
    os.system("rm " + output_file)


def main():
    run_numbers = range(5)
    lhe_folder = '../../processes/vector2to3/Events/'
    npy_folder = './npy_runs/'

    for run_number in run_numbers:
        lhe_file = lhe_folder + f'run_0{run_number+1}/unweighted_events'
        npy_file = npy_folder + f'run_0{run_number+1}'

        # convert the file
        lhe2npy(npy_file, lhe_file)

if __name__ == '__main__':
    main()
