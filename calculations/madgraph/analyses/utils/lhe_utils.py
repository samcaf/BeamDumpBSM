import os
import numpy as np

###########################################################
# convert LHE file to npy file using a script LHEtoPython
# npy_file_name: output npy file name
# lhe_file_name: input lhe file name
# incl_in=True/False: include incoming particles or not
# incl_mid=True/False: include intermediate particles or not
# incl_out=True/False: include outgoing particles or not
############################################################

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
    os.system("./LHEtoPython " + lhe_file_name + ".lhe " + incl_in_str +
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
        print("success")
    else:
        print("fail")
    # remove the temp file
    os.system("rm " + output_file)


# =====================================
# Useful Functions
# =====================================
# From https://github.com/ymzhong/mg5_aMC_tutorial/blob/main/analysis_LHE_output.ipynb

# select particluar ID
def select_ID(event, ID_list):
    selected_event = []
    for ID_no in range(len(ID_list)):
            selected_event.append(event[event[:,0]==ID_list[ID_no]])
    return np.concatenate(selected_event)

# 3 momentum size
def p(p_arr):
    return np.linalg.norm(p_arr[[1,2,3]])
# transverse momentum
def pT(p_arr):
    return np.linalg.norm(p_arr[[1,2]])
# rapidity
def y(p_arr):
    return 0.5*np.log((p_arr[4]+p_arr[3])/(p_arr[4]-p_arr[3]))
# cos polar angle
def cos_theta(p_arr):
    return p_arr[3]/p(p_arr)
# pseudo-rapidity
def eta(p_arr):
    return 0.5*np.log((1+cos_theta(p_arr))/(1-cos_theta(p_arr)))
# particle mass
def m(p_arr):
    return np.sqrt(p_arr[4]**2 - p(p_arr)**2)
# azimuth angle
def phi(p_arr):
    if p_arr[1]>0:
        temp = np.arctan(p_arr[2]/p_arr[1])
    else:
        temp = np.sign(p_arr[2])*np.pi+np.arctan(p_arr[2]/p_arr[1])
    if temp <0:
        return temp + 2*np.pi
    else:
        return temp
# two particle invariant mass
def m12(p_arr_1, p_arr_2):
    p_12 = p_arr_1 + p_arr_2
    return m(p_12)
# delta R
def delta_R(p_arr_1, p_arr_2):
    delta_r_1 = np.sqrt((eta(p_arr_1)-eta(p_arr_2))**2+(phi(p_arr_1)-phi(p_arr_2))**2)
    delta_r_2 = np.sqrt((eta(p_arr_1)-eta(p_arr_2))**2+(phi(p_arr_1)-phi(p_arr_2)-2*np.pi)**2)
    delta_r_3 = np.sqrt((eta(p_arr_1)-eta(p_arr_2))**2+(phi(p_arr_1)-phi(p_arr_2)+2*np.pi)**2)
    return np.min([delta_r_1,delta_r_2,delta_r_3])
# vector angle
def angle(p_arr_1, p_arr_2):
    p1 = p_arr_1[[1,2,3]]/p(p_arr_1)
    p2 = p_arr_2[[1,2,3]]/p(p_arr_2)
    return np.arccos(np.dot(p1,p2))
# delta azimuth angle
def delta_phi(p_arr_1, p_arr_2):
    p1 = p_arr_1[[1,2]]/pT(p_arr_1)
    p2 = p_arr_2[[1,2]]/pT(p_arr_2)
    return np.arccos(np.dot(p1,p2))

# missing momentum vector
def miss_vec(event):
    missing_ID = [12,-12,14,-14,16,-16]
    return np.sum(select_ID(event,missing_ID),axis=0)
