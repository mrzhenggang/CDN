#!/bin/bash

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

git add .
git config --global core.autocrlf false
git config --global http.sslVerify "false"

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
#git push coding master

