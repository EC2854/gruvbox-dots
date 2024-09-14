#!/bin/bash
area=$(slurp -b 1b1b1ba0)
grim -g "$area" - | wl-copy
