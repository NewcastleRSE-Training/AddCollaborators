A bash script to add collaborators to a GitHub repository.

Use this script for Git workshops where a large group should be added as collaborators on a repository to practice pull requests

**addCollaborator.sh** adds a single user by username 
- takes 2 arguments: username and organisation
```
gh auth login
./addCollaborator.sh Robin-Wardle newcastlerse-training
```

**addAll.sh** calls addCollaborator.sh iterating over a text file 1 username per line

### Usage
At command line, 
```
gh auth login
addAll.sh collaborators.txt
```

see https://docs.github.com/en/rest/collaborators/collaborators?apiVersion=2022-11-28#remove-a-repository-collaborator for creating a script to remove collaborators - not needed if you [reset the repository](https://github.com/NclRSE-Training/CarpentriesWorkshops/issues/76) 

### gh auth login looks like this:
```
ncb176@sage-302596 ~/git-repositories/AddCollaborators
 % gh auth login
? Where do you use GitHub? GitHub.com
? What is your preferred protocol for Git operations on this host? SSH
? Upload your SSH public key to your GitHub account? /home/campus.ncl.ac.uk/ncb176/.ssh/id_rsa.pub
? Title for your SSH key: GitHub CLI
? How would you like to authenticate GitHub CLI? Login with a web browser

! First copy your one-time code: 1AF9-F9E4
Press Enter to open https://github.com/login/device in your browser... 
Opening in existing browser session.
```
