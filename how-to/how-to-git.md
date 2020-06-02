# My git commands

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

## Add all of the relevant files and commit

```
$ git add .

$ git commit -m "Initial commit" -m "Description if needed..."
```

## Connect it to Github

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
## Using git stash
List all stashes:
```
$ git stash list
```
Stash everything including untracked files:
```
$ git stash --all
```
Give stashed files a name:
```
$ git stash save "my_stash_name"
```
Apply last stash to current branch:
```
$ git stash apply
```
Apply specific stash index:
```
$ git stash apply stash@{0}

$ git stash apply stash@{stash_index}
```

## Catching up with master

```
git checkout master

git pull

git checkout name-of-my-branch

git rebase master
```

## Rebasing is different

* instead of merge, do a rebase. it will rewrite history on my branch.

