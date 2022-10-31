#! /bin/bash

pip install -r requirements.txt

gh auth status

if [[ $? -ne 0 ]]
then
  echo "gh is not authenticated!"
  gh auth login
fi