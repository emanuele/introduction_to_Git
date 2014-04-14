import networkx as nx
import matplotlib.pyplot as plt

def create_graph(network):
    G = nx.Graph(network)
    nx.draw(G)

