# -*- coding: utf-8 -*-

# Ned's .startup.py file    ipython 启动加载文件，用来导入一些自定义函数或者模块
# http://stackoverflow.com/questions/11124578/automatically-import-modules-when-entering-the-python-or-ipython-interpreter

print("(.startup.py)")

import datetime as dt
import os
import pprint
import re
import sys
import time
import json
import requests as req

try:
    import matplotlib.pyplot as plt
    import pandas as pd
    from pandas import Series, DataFrame
    import numpy as np
except ImportError:
    pass

print("(imported datetime, os, pprint, re, sys, time, json)")
pp = pprint.pprint


def repr_dict(d):
    """https://stackoverflow.com/questions/25118698/print-python-dictionary-with-utf8-values"""
    print('{%s}' % ',\n'.join("'%s': '%s'" % pair for pair in d.iteritems()))
