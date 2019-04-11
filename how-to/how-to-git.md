## Create a new repo from an existing project

Source: https://kbroman.org/github_tutorial/pages/init.html

Go into the directory containing the project.

> git init

You'll probably want to create a .gitignore file right away, to indicate all of the files you don't want to track. Use git add .gitignore, too.

> printf "build/*\npublic/*" > .gitignore

Add all of the relevant files.

> git add *

> git commit -m "Initial commit" -m "Description if needed..."

## Connect it to github

Go to Github and create a new Repository

Then run the following:

> git remote add origin https://github.com/lewdev/<new_repo>

OR

> git remote add origin git@github.com:lewdev/<new_repo>

> git push -u origin master
