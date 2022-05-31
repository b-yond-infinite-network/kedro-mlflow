#!/bin/sh
set -e

python3 -m pip install --upgrade pip setuptools wheel
python setup.py bdist_wheel