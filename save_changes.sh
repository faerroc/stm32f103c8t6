#!/bin/bash

if [ $# -eq 0 ]; then
    echo "missing comment"
    exit
fi

echo "Pushing changes..."
git add .
git commit -m "stm32f103c8t6 - $1"

CHANGES=$(git cherry -v | wc -l)

if [ $CHANGES -eq 0 ]; then   
    echo "No pendent changes to push"
else
    git push
fi

echo "Done"
