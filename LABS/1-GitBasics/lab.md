# Git Basics

## Git Installation 
- Download and Install Git
- https://git-scm.com/downloads

## Basics
- Open PowerShell.
- Create a new, empty folder > c:\_DEVELOPMENT\gitdemo1
- Navigate to folder and create a file with some content (e.g. Version 1)
- Enter "git init" to initialize the folder as Git repo
- Enter "Git status" to check if the new file is untracked
- Enter "Git add *" to add the file to the tracked files list
- Enter "Git commit -m 'Initial Version'" to commit the change to the repo
- Change the file content (e.g. Version 2)
- Enter "Git status" to check if the file is modified
- Enter "Git add *" to stage the new file version
- Enter "Git commit -m 'Version 2'" to commit the new version the change to the repo
- Enter "Git log" to check the commit history

## Quick content from an old commit
- Enter "Git checkout xxxxxxxxxxxxxxxxxxxxxxxxxxxx (your commit id from Version 1)"
- Check the file content, it should be "Version 1" again
- Enter "Git log" and check if the HEAD is not on the initial commit
- Enter "Git checkout yyyyyyyyyyyyyyyyyyyyyyyyyyyy (your commit id from Version 2)"

## .gitignore
- Navigate to the Git-managed folder
- Create a ".gitignore" file
- Add these 3 lines to the file to ignore bitmap files, then save it
    **/*.bmp
    *.bmp
- Add a new bitmap file to the folder
- Enter "Git status", the bitmap files are not shown, only the .gitignore file is
- Stage and commit the .gitignore to the repo

## Branching
- Enter "Git branch" to display all branches (only "master")
- Enter "Git branch dev" to create a new dev branch
- Enter "Git checkout dev" to switch to the dev branch
- Change the file content to "Version 10", then save it
- Stage and commit the change (the change is commited to the dev branch now)
- Enter "Git checkout master" to switch to the master branch, then check the file content (still the old version)
- Enter "Git merge dev" to merge the dev branch into the master branch
- Check the file version in the master branch now
- Enter "Git branch -d dev" to delete the dev branch

## Cloning
- Create a new, non-git-managed folder > c:\_DEVELOPMENT\gitdemo2
- Navigate to the directory
- Enter "Git clone https://github.com/DinoBordonaro/PACMAN.git" to clone a public Git repo
- After the download completed, check the directory content

## Cloning the Workshop files
- Navigate to folder "c:\_DEVELOPMENT"
- Download the lab files
    - Git clone https://github.com/DinoBordonaro/AzureStackOperatorWorkshop.git