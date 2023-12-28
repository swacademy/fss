#! /bin/sh
# set -x

stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 360s
