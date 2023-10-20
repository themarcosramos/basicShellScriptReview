#!/usr/bin/env bash

find / -iname "*.so" \
       -user marcos  \
       -type f       \
       -size +1M     \
       -exec ls {}   \;
