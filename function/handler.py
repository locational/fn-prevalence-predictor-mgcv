# import json
# import sys
# import uuid

# import numpy as np
# import pandas as pd
# import geopandas as gp
import rpy2.robjects as robjects


def run_function(params: dict):
    # Insert calls to R here, and output
    robjects.r('''
    source('function/R/simplest.R')
    ''')
    simplest = robjects.globalenv["simplest"]
    result = list(simplest())
    return {'all': result}