#!/usr/bin/env python
# coding: utf-8

import os
import re

ignore = ['.git', '.gitignore', '.gitmodules']
dotfiles = re.compile('\.\w+')
pwd = os.path.dirname( os.path.abspath(__file__) )

for f_name in os.listdir(pwd):
    match = dotfiles.match(f_name)

    if match is None or f_name in ignore:
        continue

    actual = os.path.join(pwd, f_name)
    link = os.path.join(os.environ["HOME"], f_name)
    if not os.path.islink(link):
        os.symlink(actual, link)
