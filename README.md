A bash script to add collaborators to a GitHub repository.

Use this script for Git workshops where a large group should be added as collaborators on a repository to practice pull requests

addCollaborator.sh adds a single user by username
addAll.sh calls addCollaborator.sh iterating over a text file 1 username per line

### Usage
At command line, 
```
gh login
addAll.sh collaborators.txt
```
