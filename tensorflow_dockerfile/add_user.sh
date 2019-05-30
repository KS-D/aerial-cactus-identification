#!/usr/bin/env bash
sudo mkhomedir_helper $1
cd /$1
jupyter notebook --ip=0.0.0.0
