#!/bin/sh
#!/bin/sh
# rest of script

set -e # fail fast
set -x # print commands

git clone resource-gambitcardddb gambitcardddb

cd gambitcardddb
echo $(date) > bumpme
ls

git config --global user.email "nobody@concourse.ci"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date"
