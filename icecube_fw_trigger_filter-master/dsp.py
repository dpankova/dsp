#!/usr/bin/python3
# Demonstration of Simple Python Fixed-Point Module
# (C)Copyright 2006-2014, RW Penney

import time
import numpy as np
try:
    import matplotlib
    matplotlib.use('qt4agg')
    import matplotlib.pyplot as plt
    HAVE_MATPLOTLIB = True
except ImportError:
    HAVE_MATPLOTLIB = False

import FixedPoint
from math import exp, pow
from sympy import DiracDelta

gamma = 500
rang = 127 
def func(gamma):
    """prepare the function"""
    fx = [110*pow(exp((-x + 5.13)/6.8) + exp((x - 5.13)/52.8),-8) for x in range(rang)]
    print(fx)
    print('===++++++++++++++++++++++++++++++++===')
    """prepare the transfer function"""
    fd = np.zeros(rang)
    fd[0] = 1
    fh0 = [(-exp(-x/gamma))/gamma for x in range (rang)]
    fh =  [sum(x) for x in zip(fd, fh0)]
    print(fh)
    fc = np.convolve(fx,fh)
    print('===++++++++++++++++++++++++++++++++===')
    print(fc)
 
if __name__ == "__main__":

    func(gamma)
#    if HAVE_MATPLOTLIB:
#        plotDemo()

# vim: set ts=4 sw=4 et:
