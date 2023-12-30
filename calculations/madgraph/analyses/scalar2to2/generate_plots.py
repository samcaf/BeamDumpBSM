import numpy as np
import matplotlib.pyplot as plt


# =====================================
# Physics Flags
# =====================================
# ---------------------------------
# PIDs
# ---------------------------------
E_PID = {charge: -charge*11 for charge in [-1, 1]}
MU_PID = {charge: -charge*13 for charge in [-1, 1]}

NS_PID = 994
NF_PID = 995

S_PID = 996
PHI_PID = 997
V_PID = 998
U_PID = 999


# =====================================
# Useful Physics Functions
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

# cos polar angle
def cos_theta(p_arr):
    return p_arr[3]/p(p_arr)


# =====================================
# MadEvent Scan Utilities
# =====================================
def get_scan_info(process_dir, num_runs):
    info_file = process_dir + f'/Events/scan_run_0[1-{num_runs}].txt'

    info = {}

    with open(info_file, 'r') as f:
        lines = f.readlines()
        header_types = {}

        for ihead, header_type in enumerate(lines[0].split()):
            header_type = header_type.strip('#')
            header_types[ihead] = header_type

        for ihead in header_types:
            info[header_types[ihead]] = []

        for line in lines[1:]:
            for iline, val in enumerate(line.split()):
                info[header_types[iline]].append(val)

    return info


# =====================================
# Main
# =====================================
def main():
    xs = {}
    costhetas = {}

    process_dir = '../../processes/scalar2to2/'
    num_runs = 4
    scan_info = get_scan_info(process_dir, num_runs)

    run_names = scan_info['run_name']

    xsecs = scan_info['cross']
    xsecs = [float(xsec) for xsec in xsecs]
    run_weights = {}

    beam_energies = {run: 500 for run in run_names}
    # scalar masses
    labels = {'run_01': r'$m_S=0.001$ GeV',
              'run_02': r'$m_S=0.01$ GeV',
              'run_03': r'$m_S=0.1$ GeV',
              'run_04': r'$m_S=1$ GeV',
              'run_05': r'$m_S=10$ GeV'}

    for xsec, run in zip(xsecs, run_names):
        xs[run] = []
        costhetas[run] = []

        events = np.load(f'npy_runs/{run}.npy')
        run_weights[run] = np.ones(len(events))*(xsec/len(events))

        for event in events:
            p_s = select_ID(event, [S_PID])
            assert len(p_s) > 0, 'No u found in event'
            assert len(p_s) == 1, 'More than one u in the event'
            p_s = p_s[0]

            costhetas[run].append(cos_theta(p_s))
            xs[run].append(p_s[3]/beam_energies[run])

    # ---------------------------------
    # Plotting sigma
    # ---------------------------------
    fig_sigma, ax_sigma = plt.subplots()

    ax_sigma.set_xlabel(r'$m_S$', fontsize=16)
    ax_sigma.set_ylabel(r'$\sigma$ (pb)', fontsize=16)

    ax_sigma.plot([5, 10, 25, 50], xsecs, lw=2)

    # ax_sigma.legend(fontsize=14)
    fig_sigma.tight_layout()
    fig_sigma.savefig('plots/sigma_plots.pdf')

    # ---------------------------------
    # Plotting (dsigma/dx) / sigma
    # ---------------------------------
    fig_x, ax_x = plt.subplots()

    ax_x.set_xlabel(r'$x$', fontsize=16)
    ax_x.set_ylabel(r'$\frac{1}{\sigma}\frac{d\sigma}{dx}$', fontsize=20)

    for run in run_names:
        ax_x.hist(xs[run], bins=30,
                 density=True, label=labels[run],
                 lw='2', histtype='step')

    ax_x.legend(fontsize=14)
    fig_x.tight_layout()
    fig_x.savefig('plots/dlogsigma_dx_plots.pdf')

    # ---------------------------------
    # Plotting (dsigma/dx)
    # ---------------------------------
    fig_x, ax_x = plt.subplots()

    ax_x.set_xlabel(r'$x$', fontsize=16)
    ax_x.set_ylabel(r'$\frac{d\sigma}{dx}$ (pb)', fontsize=20)

    for run in run_names:
        ax_x.hist(xs[run], bins=50,
                 weights=run_weights[run], label=labels[run],
                 lw='2', histtype='step')

    ax_x.legend(fontsize=14)
    fig_x.tight_layout()
    fig_x.savefig('plots/dsigma_dx_plots.pdf')

if __name__ == "__main__":
    main()
