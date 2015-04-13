#!/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

#remove previously generated site
if [ -e ./public ]; then
  rm -rf public
fi

#generate static site
buster generate --dir=public

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
git commit -m "$msg"

# Push source and build repos.
git push origin master
git subtree push --prefix=public git@github.com:keithhamilton/blog.git gh-pages
