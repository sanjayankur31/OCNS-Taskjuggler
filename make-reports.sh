#!/bin/bash

# Copyright 2019 Ankur Sinha
# Author: Ankur Sinha <sanjay DOT ankur AT gmail DOT com>
# File : make-reports.sh
#

# Generate but store in a tmp directory
rm -rf docs && mkdir docs
tj3 ./src/CNS2020.tjp -o /tmp/tj3/ || exit -1

# Switch to branch, copy over
git checkout master || exit -1
rm -rf docs && mkdir docs
cp -vr /tmp/tj3/* ./docs/

# commit
git add .
git commit -m "Regenerate" -S
git push
git checkout source
