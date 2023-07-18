#!/bin/bash

# Copyright 2019 Ankur Sinha
# Author: Ankur Sinha <sanjay DOT ankur AT gmail DOT com>
# File : make-reports.sh
#

# Generate but store in a tmp directory
rm -rf /tmp/tj3/ && mkdir /tmp/tj3/
tj3 ./src/CNS.tjp -o /tmp/tj3/ || exit -1

# Not the tags file
rm -fv /tmp/tj3/tags

# Switch to branch, copy over
git checkout master || exit -1
git pull origin master
rm -rf docs && mkdir docs
cp -vr /tmp/tj3/* ./docs/

# Create an index.html
pushd docs
    ln -fvs ./"Overview - by tasks.html" ./index.html
popd

# commit
git add .
git commit -m "Regenerate" -S
git push -u origin master
git checkout source && mkdir docs
