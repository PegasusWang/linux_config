# -*- coding: utf-8 -*-

# ~/.ipython/profile_default/startup/startup.py
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

try:
    import matplotlib.pyplot as plt
    import pandas as pd
    from pandas import Series, DataFrame
    import numpy as np
    import requests as req
except ImportError:
    pass


def _repr_dict(d):
    """https://stackoverflow.com/questions/25118698/print-python-dictionary-with-utf8-values"""
    print('{%s}' % ',\n'.join("'%s': '%s'" % pair for pair in d.iteritems()))


def _json_dumps(dict_data, indent=4):
    """用来处理一些包含中文的 json 输出"""
    print(json.dumps(dict_data, indent=indent, ensure_ascii=False))


repr_dict = _repr_dict
pp = pprint.pprint
json_dumps = _json_dumps


print("(imported datetime, os, pprint, re, sys, time, json)")


def is_reload():
    """ 本地调试页面的时候用 export LENS_ADMIN_DEBUG=1 """
    flag = os.environ.get('RELOAD')
    if flag in ('1', 'True', 'true'):
        return True
    return False

# http://shawnleezx.github.io/blog/2015/08/03/some-notes-on-ipython-startup-script/
_is_reload = is_reload()
print("export RELOAD={}".format(_is_reload))
if _is_reload:
    # 如何修改代码之后让 ipython 重新加载模块
    from IPython import get_ipython
    ipython = get_ipython()

    ipython.magic("load_ext autoreload")
    ipython.magic("autoreload 2")
