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
At command line, provide the org that contains the countries repo (repo name 'countries' and filename 'collaborators.txt' are hard coded)
```
gh auth login
addAll.sh NewcastleRSE-Training
```

see https://docs.github.com/en/rest/collaborators/collaborators?apiVersion=2022-11-28#remove-a-repository-collaborator for creating a script to remove collaborators - not needed if you [reset the repository](https://github.com/NclRSE-Training/CarpentriesWorkshops/issues/76) 

### gh auth login looks like this:
```
ncb176@sage-302596 ~/git-repositories/AddCollaborators
 % gh auth login
? Where do you use GitHub? GitHub.com
? What is your preferred protocol for Git operations on this host? SSH
? Upload your SSH public key to your GitHub account? Skip
? How would you like to authenticate GitHub CLI? Login with a web browser

! First copy your one-time code: 1AF9-F9E4
Press Enter to open https://github.com/login/device in your browser... 
Opening in existing browser session.
```

<img width="579" height="738" alt="Screenshot from 2026-04-07 21-16-34" src="https://github.com/user-attachments/assets/c9c50358-5cd1-4299-86f5-4bac51865d03" />
