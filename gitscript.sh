#!/bin/bash
read -p "Enter path for target repository:  " targetDir
read -p "Enter Name for your repository name:  " repoName

cd ~

if [ -z $targetDir ];
then 
targetDir="."
fi

if [ -z $repoName ];
then 
echo "Unnamed Repository cannot be created"
exit 1
fi

if ! gh auth status &> /dev/null;
then
echo "Not logged into GitHub CLI. Starting Authentication"
gh auth login
fi

cd $targetDir || { echo "Directory not found"; exit 1; }

echo "Initializing Git Repository"

mkdir -p "$repoName"
cd $repoName
git init
git branch -M main

echo "# $repoName" > README.md
git add README.md

git commit -m "REPO INITIALIZED"

gh repo create "$repoName" --public --source=. --remote=origin --push
echo "REPOSITORY CREATED SUCCESSFULLY"

code .

