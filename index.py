import os
from shutil import copy2
import pathlib


# ~ location
HOME = str(pathlib.Path.home())

ignore_list = [
  'index.py', # script for copying the . files
  '.zshrc', # currently unsupported as it will overwrite the existing APPARIX configuration.
  '.git', # as it is a directory
]

for dot_file in os.listdir('.'):
  if dot_file in ignore_list:
    continue

  copy2(dot_file, HOME)
  print('Successfully copied', dot_file)
