#!/usr/bin/env bash
set -e -x

python -m pip install coverage
python -m pip install -r requirements.txt
python -m coverage run -m unittest discover tests -p '*_test.py'
python -m coverage xml
python -m coverage report -m
bash <(curl -s https://codecov.io/bash)