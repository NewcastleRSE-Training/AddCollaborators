#!/bin/sh

# Check if fewer than 2 arguments are provided
if [ $# -lt 2 ]; then
    echo "Error: At least two command-line arguments are required."
	 echo "Usage: addcollaborator.sh <github_username> <github_organisation>"
    exit 1
fi

gh api --method PUT -H "Accept: application/vnd.github+json2" /repos/${2}/countries/collaborators/${1} -f permission='write'

