#!/bin/bash

mkdir models

aws s3 sync  s3://sentiment-explorer ./models/
ls -lh ./models
pwd
cd ~
pwd
ls -lh
cd /local

gunicorn --bind 0.0.0.0:5000 wsgi