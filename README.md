# Local Git Repo Finder for Windows

A batch app that lists all the Git repos in your folder.


## How to use

1. Open Command Prompt `cmd`.
2. `cd` to where `repo_lister.bat` is.
3. Run command `repo_lister.bat "D:\projects"` (replace with your path of folder where you want to start the search in).
4. It might take long if the folder has many nests. Have a sip of coffee.

- It will list out the names of all parent folders containing a `.git` directory with its full path.