# Live Save File
Instructions on making a sharable save file between friends.

## Attention
Before using this apporach check if your save file can be used by other machines and with other accounts

## Setup
### Starting
1. Create a new git repo (can be done in GitHub)
2. Navigate to folder containing game save file
3. Copy and Adjust .gitignore file

    !name_*.sav should be adjusted to name pattern of your save files you want to share all oterh files will be ignored. * is a wildcard identifier
4. run commands
```
git init
git branch -M main
```
copy generated command regarding `git remote add origin`
```
git add .
git push -u origin main
```

### Next Machine
```
git init
git remote add origin PATH/TO/REPO
git fetch
git checkout -t origin/master
```

### In Github
All members need write access to update savefiles.

### Adjust scripts
Copy and adjust bat files provided in this repo.

Search and replace `myself` with your user name. This helps to repose issues occuring later during sycs.

Every file needs to navigate to the folder of your save data. These files can then be played anywhere on your machine.

### Optional
Add all members to a users.md in your save file folder.

## Usage
Run file before.bat via console or double click before starting game. If cloud save is enabled this might tigger a sync event with your save provider (Steam, Epic, GoG)

Run file after.bat via console or double click after finishing gaming session. This will remove your name as the checkout personon from playing.md and syncs the new save files to the created git repo.
