Introduction to Version Control (VCS) - GitHub Repository
---
---
[ Back To Home ](../README.md)

###[ Install Git ](https://git-scm.com/download/linux) 


## Mostly Used Command

    init
    add
    commit
    status
    branch
    push
    pull
    clone
    fetch
    merge
    diff


## Create a branch and checkout (switch) to it


    git checkout -b devops-demo
Creates and checks out (switch) to a new branch named "devops-demo".

## Finalize the merge commit after resolving conflicts
    git commit
    #Provide a message with your commit
    git commit -m "Commit Message"
Concludes a merge after fixing conflicts.


## Merge branches
First, checkout the branch you want to merge in, then run:

    git merge devops-demo-marge
Merges the commits from "devops-demo-marge" into the currently checked out branch.


## List both local and remote branches
    git branch -a

## Delete local branch

    # Delete local branch
    git branch -d devops-demo

    # Delete local branch forcefully
    git branch -D devops-demo
Deletes the local branch called "my-devops-demo". Note that if the branch is not merged upstream, you need to force the deletion using the "-D" option instead of "-d"



## Delete remote branch
    git push origin --delete devops-demo
Deletes the branch called "devops-demo" from the "origin" remote.


## Show the log containing commit history
    # Show all commits
    git log
    
    # Show the most recent 5 commits
    git log -5
    
    # Show commits on one line
    git log --oneline
    
    # Show a patch with changes introduced by each commit
    # Limiting the result to the most recent two commits
    git log -p -2



[ Back To Home ](../README.md)




