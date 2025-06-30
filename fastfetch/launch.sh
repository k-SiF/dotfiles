#!/bin/bash

if [ $# -eq 0 ]; then
  fastfetch --gpu-hide-type Integrated --size-ndigits 0 
else
  fastfetch "$@"
fi
