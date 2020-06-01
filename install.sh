#!/bin/bash

if [ $# != 1 ]; then
  echo "Provide location in path"
  exit 1
fi

echo "Creating soft links to scripts in " $1

ln -s ${PWD}/gitclean $1/gitclean
ln -s ${PWD}/gitclone $1/gitclone
ln -s ${PWD}/gitsync $1/gitsync
echo "Done"
