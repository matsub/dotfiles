#!/usr/bin/env python3
# coding: utf-8

import os
import re

ignore = ['.git', '.gitignore', '.gitmodules']
dotfiles = re.compile('\.\w+')
this_dir = os.path.dirname( os.path.abspath(__file__) )

for f_name in os.listdir(this_dir):
    match = dotfiles.match(f_name)

    if match is None or f_name in ignore:
        continue

    source = os.path.join(this_dir, f_name)
    link_name = os.path.join(os.environ["HOME"], f_name)
    if not os.path.islink(link_name):
        os.symlink(source, link_name)
