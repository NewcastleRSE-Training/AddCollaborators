#!/bin/sh

# CHECK IF ORGANISATION IS SPECIFIED
if [ $# -lt 1 ]; then
	echo "Usage: addAll.sh <github_organisation>"
	exit 1
fi

# LOG INTO GITHUB

if [ -f gh_token ]
then
  cat .ssh/gh_token
  export GH_TOKEN=`cat gh_token`
else  
  GH_TOKEN=`gh auth token`
fi

if [ $? != "0" ]
then
  echo -e "Please login to github command line by running:\n\t gh auth login\n"
  exit 1
fi

if [ -f collaborators.txt ]
then
   cat collaborators.txt
else
   echo -e "Please create a file called collaborators.txt, containing the GitHub login of all the collaborators to be added"
	exit 1
fi
while read line
do
  ./addCollaborator ${line} ${1}
done < collaborators.txt
