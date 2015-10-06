# locdown
Chart loc over time using build tags, useful if you are trying to reduce your codebase.

# requirements
nix env w/ git, xargs, wc
A repo that uses build tabs

# usage
```
git clone git@github.com:EnglishCriminal/locdown.git
cd locdown
chmod +x locdown
./locdown.sh <repo_to_count_file_path>
```
You will see output regarding the branch tags and loc, after which a browser window with graphed data will launch.
