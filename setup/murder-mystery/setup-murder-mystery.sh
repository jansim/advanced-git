#!/bin/bash

# Set up repo
mkdir git-murder-mystery
cd git-murder-mystery
git init

# Generate news reports
cp ../1973-04-26/news.md ./news.md
cp ../1973-04-26/image.jpg ./image.jpg
git add .
GIT_COMMITTER_DATE="1973-04-26T00:00:00" git commit --date="1973-04-26" -m "Wealthy Businessman Found Murdered in Git-tisburg Mansion (1973)"

cp ../1976-11-12/news.md ./news.md
cp ../1976-11-12/image.jpg ./image.jpg
git add .

GIT_COMMITTER_DATE="1976-11-12T00:00:00" git commit --date="1976-11-12" -m "Shocking Murder of Young Woman Rocks Git-tisburg Community (1976)"

cp ../1977-08-06/news.md ./news.md
cp ../1977-08-06/image.jpg ./image.jpg
git add .
GIT_COMMITTER_DATE="1977-08-06T00:00:00" git commit --date="1977-08-06" -m "Violent Crime Wave Continues in Git-tisburg as Another Citizen Falls Victim (1977)"

# Remove news
rm ./news.md
rm ./image.jpg
git add .
GIT_COMMITTER_DATE="1990-01-01T00:00:00" git commit --date="1990-01-01" -m "Hide evidence: Remove all old news reports"

# Add last repo information e.g. README
cp ../last/detective.jpg detective.jpg
cp ../last/README.md README.md
git add .
git commit -m "Add README / Instructions to Solve Mystery"

# Optional: Push to github (Note the force push here, so tread with caution!)
# git remote add origin git@github.com:jansim/git-murder-mystery.git
# git push --force --set-upstream origin main
