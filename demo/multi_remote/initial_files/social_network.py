import os
import matplotlib.pyplot as plt
import graph

def parse_data(directory):
    network = {}
    people = os.listdir(directory)
    for filename in people:
        name = filename
        if filename.endswith('.txt'):
            name = filename[:-4].strip()
        name = name.replace('.',' ').lower()
        f = open(directory + os.path.sep + filename)
        acquaintances = []
        for name_connected in f:
            acquaintances.append(name_connected.strip().lower())
        network[name] = acquaintances
    return network

if __name__ == '__main__':

    network = parse_data(directory = 'people')
    plt.figure()
    plt.title("Social Network", fontsize='xx-large')
    graph.create_graph(network)

    plt.show()
