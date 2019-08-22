#!/bin/bash

# Copyright 2019 Ankur Sinha
# Author: Ankur Sinha <sanjay DOT ankur AT gmail DOT com>
# File : make-reports.sh
#

rm -rf docs && mkdir docs

pushd docs
    tj3 ../src/CNS2020.tjp
popd
