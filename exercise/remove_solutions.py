"""Read a file line by line and print on screen just lines starting
with '#' or empty lines. Useful to remove solutions from exercises.
"""

import sys

if __name__=='__main__':

    filename = sys.argv[-1]

    for line in open(filename):
        if len(line.strip()) == 0 or line.startswith('#'):
            print line,
            
        
