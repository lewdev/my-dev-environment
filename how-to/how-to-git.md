# My git commands


## Diff with branch

The filter can be used to get only certain file changes (A for added, C for copied, M for modified, D for deleted)
```
git checkout branch-name

git diff master..branch-name --diff-filter=ACM
```

## Creating a new branch
Flag `-b` will switch to the new branch. You can have a few commits on master already too, but it's not recommended.
```
git checkout -b <new branch>
```

This is shorthand for:
```
$ git branch <new branch>

$ git checkout <new branch>
```

Then push it upstream:
```
git push --set-upstream origin <new branch>
```

## Using git stash
List all stashes:
```
$ git stash list
```
Stash everything including untracked files:

*DO NOT use `git stash --all` because it will include ignored files!
```
$ git stash -u
```
Give stashed files a name:
```
$ git stash save "my_stash_name"
```
Apply last stash to current branch:
```
$ git stash apply
```
Apply specific stash index (`0` for latest stash).
```
$ git stash apply stash@{stash_index}
```
View stash summary by index (`-p` to show details)
```
$ git stash show stash@{stash_index}

$ git stash show -p stash@{stash_index}
```

Delete all stashes (See bottom of [git documentation](https://mirrors.edge.kernel.org/pub/software/scm/git/docs/git-stash.html) on recovering cleared stashes)
```
git stash clear
```


## Add all of the relevant files and commit
```
$ git add .

$ git commit -m "Initial commit" -m "Description if needed..."
```

## Create a new repo from an existing project

[Source](https://kbroman.org/github_tutorial/pages/init.html)

Go into the directory containing the project.
```
$ git init
```
You'll probably want to create a .gitignore file right away, to indicate all of the files you don't want to track. Use git add .gitignore, too.

```
$ printf "build/*\npublic/*" > .gitignore
```

## Connect repo to Github

Go to Github and [create a new Repository](https://github.com/new).

Then run the following:
```
$ git remote add origin https://github.com/lewdev/<new_repo>
```
Verify remote URL
```
$ git remote -v
```
Push the commits to the repo.
```
$ git push -f origin master
```

When connecting using SSH URL
```
$ git remote add origin git@github.com:lewdev/<new_repo>
```
## Using git commit
Commit with specific username and email
```
$ git -c user.name='Lewis Nakao' -c user.email=lewdev@gmail.com commit -m "Message"
```
Stage all files
```
$ git add -A
```
Add all files to staging and commit
```
$ git commit -a -m "Commit message"
```
Remove file from staging
```
$ git rm --cached my-file.js
```
Alternatively:
```
$ git reset my-file.js
```
Undo last commit (without losing changes)
```
$ git reset --soft HEAD^
```
Or amend a previous commit
```
$ git add file-i-forgot-to-add.html

$ git commit --amend -m "Add the remaining file"
```

## Catching up with master
```
git checkout master

git pull

git checkout my-branch

git rebase master
```
or
```
git checkout master

git pull

git rebase master my-branch
```
