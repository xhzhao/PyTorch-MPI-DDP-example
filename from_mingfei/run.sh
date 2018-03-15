#!/bin/sh

#salloc -p skx-6148-debug -N 2

#n1
#python mnist_dist.py

#n2
mpirun -n 2  python -u mnist_dist.py         #this work ok
