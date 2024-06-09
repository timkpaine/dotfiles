c.InteractiveShellApp.exec_lines = [
    '''import numpy as np''',
    '''import pandas as pd''',
    '''get_ipython().magic("load_ext autoreload")''',
    '''get_ipython().magic("autoreload 2")''',
    '''get_ipython().magic("config InlineBackend.figure_format = 'retina'")''',
    '''print('Init complete')''',
]