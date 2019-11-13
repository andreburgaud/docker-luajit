#!/bin/sh

set -e

sh -c "sleep 0.5; rlwrap -m -pgreen luajit $*"
