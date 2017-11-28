#!/bin/sh
git checkout master
git branch -D develop
git branch -D feature
git branch -D feature_test
git push --delete origin develop
git push --delete origin feature
git push --delete origin feature_test
git checkout -b develop
git push -u origin develop
git checkout -b feature develop 

