#!/usr/bin/env sh
py2v=`python2 -c 'import sys; print(sys.version)' | head -n 1 | cut -d' ' -f1`
py3v=`python3 --version | cut -d' ' -f2`
pip2 freeze | sed 's/==/>=/' > $py2v
pip3 freeze | sed 's/==/>=/' > $py3v
