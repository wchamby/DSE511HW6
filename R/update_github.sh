#!/bin/bash

set -e

REPO_PATH="C:/Users/wchamby/OneDrive/Documents/DSE511HW6"

cd "$REPO_PATH"

git add .

COMMIT_MESSAGE="Updated project files with latest analysis and charts"
git commit -m "$COMMIT_MESSAGE"

git push origin main

echo "Changes successfully pushed to GitHub!"
