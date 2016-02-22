#!/usr/bin/env python
# coding: utf-8

import os
import re
import sys

ignore = ['.git', '.gitignore', '.gitmodules']
dotfiles = re.compile('\.\w+')
pwd = os.path.dirname( os.path.abspath(__file__) )

if len(sys.argv)>1 and sys.argv[1]=="unlink":
    cmd = lambda a, l: os.unlink(l) if os.path.islink(l) else None
else:
    cmd = lambda a, l: None if os.path.islink(l) else os.symlink(a, l)

for f_name in os.listdir(pwd):
    match = dotfiles.match(f_name)

    if match is None or f_name in ignore:
        continue

    actual = os.path.join(pwd, f_name)
    link = os.path.join(os.environ["HOME"], f_name)
    cmd(actual, link)
