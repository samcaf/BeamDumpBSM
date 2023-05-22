# A short python script designed to add form factors to the file `vertices.py` in a UFO model.

# Directories
BEAMDUMP_DIR = '/Users/sam/Documents/Research/BeamDumpBSM/'
UFO_DIR = BEAMDUMP_DIR + 'FeynRules/UFO_output/'
VERTEX_FILE = UFO_DIR + 'combined_beamdump/vertices.py'


def get_vertex(filename, particle_names, multiplicities,
               convert_to_formfactor=True):
    """Get the lines associated with a given vertex in a
    vertices.py file.
    """
    # Opening in read mode
    with open(filename, 'r', encoding="utf-8") as file:
        lines = file.readlines()

        # Finding the vertex
        particle_index = -1
        for ipart, particle_line in enumerate(lines):
            # Find a line with the correct particle names
            # and multiplicities
            if all([particle_line.count(name) == mult
                    for name, mult in zip(particle_names, multiplicities)]):
                particle_index = ipart
                break
        if particle_index == -1:
            print("Vertex with specified particles not found.")
            return

        # If we get here, we have found the correct line.
        # Now we need to find the beginning and ending lines
        # for the vertex.
        first_index, last_index = -1, -1
        for ifirst, first_line in enumerate(lines[particle_index-6:particle_index]):
            if 'Vertex(' in first_line:
                first_index = particle_index - 6 + ifirst
                break
        if first_index == -1:
            print("Could not find beginning of vertex.")
            return

        for ilast, last_line in enumerate(lines[first_index:first_index+6]):
            if ')' in last_line and lines[first_index+ilast+1].strip() == '':
                last_index = first_index + ilast
                break
        if last_index == -1:
            print("Could not find end of vertex.")
            return

        # If we get here, we have found the full vertex
        vertex = lines[first_index:last_index+1]

    # Converting the given vertex to a form factor if desired
    if convert_to_formfactor:
        vertex = vertex_to_formfactor(vertex)
        lines[first_index:last_index+1] = vertex
        with open(filename, 'w', encoding="utf-8") as file:
            file.writelines(lines)

    return vertex


def vertex_to_formfactor(vertex):
    """Convert the given vertex to a form factor by changing
    the associated Lorentz structure to a form factor."""
    for i in range(len(vertex)):
        if 'lorentz' in vertex[i]:
            vertex[i] = vertex[i].replace('L.', 'L.FormFactor_')
    return vertex


if __name__ == "__main__":
    vertex_VSS = get_vertex(VERTEX_FILE, ['A', 'Ns'], [1, 2])
    # print(vertex_VSS)
    vertex_VVSS = get_vertex(VERTEX_FILE, ['A', 'Ns'], [2, 2])
    # print(vertex_VVSS)
    vertex_FFV = get_vertex(VERTEX_FILE, ['A', 'Nf'], [1, 2])
    # print(vertex_FFV)
