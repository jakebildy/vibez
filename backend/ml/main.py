from pychorus import find_chorus, create_chroma

def chorus_start_sec(file):
    chroma = create_chroma(file)
    return find_chorus(chroma[0], chroma[2], chroma[3], 10)
