#!/bin/bash

# Copyright 2019 Ankur Sinha
# Author: Ankur Sinha <sanjay DOT ankur AT gmail DOT com>
# File : make-reports.sh
#

rm -rf docs/*

# Create an index.html
tj3 ./src/CNS.tjp -o docs/ || exit -1
pushd docs
    ln -fvs ./"Overview - by tasks.html" ./index.html
popd
