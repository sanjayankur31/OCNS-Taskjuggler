#!/bin/bash

# Copyright 2019 Ankur Sinha
# Author: Ankur Sinha <sanjay DOT ankur AT gmail DOT com>
# File : make-reports.sh
#

git checkout master || exit -1

rm -rf docs && mkdir docs

tj3 ./src/CNS2020.tjp -o ./docs/

git add .
git commit -m "Regenerate" -S
git push

git checkout source
