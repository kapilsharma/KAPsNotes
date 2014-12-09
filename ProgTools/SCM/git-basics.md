# Git Basics

## Starting project

There are two ways of starting git based project.

* New project which do not have any code.
* Convert existing project on git scm.

### Existing Project

#### Initialize a repository

To start a local git repository, which we generally do for new projects, we can simply use `git init` command.

    git init

#### Add Repository

Now some of the project is developed, we want to push it to some online repository (like github, bit bucket or persoanl), we first need to  add repository

    git remote add origin <remote URL>

### New project

Create new project on Git server and clone it.

    git clone <remote URL>
