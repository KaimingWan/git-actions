#!/bin/bash
set -e

echo "#################################################"
echo "Starting the git Action"

# avoid error fatal: unsafe repository ('/github/workspace' is owned by someone else)
git config --global --add safe.directory /github/workspace/*

sh -c "$*"

echo "#################################################"
echo "Completed the git Action"
