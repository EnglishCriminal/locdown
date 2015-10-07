# locdown
Chart loc over time using build tags, useful if you are trying to reduce your codebase.

# requirements
Nix env w/ git, xargs, wc, modern web browser and a repo that uses build tags.

# usage
```
git clone git@github.com:EnglishCriminal/locdown.git
cd locdown
chmod +x locdown
./locdown.sh <repo_to_count_file_path>
```
You will see output regarding the branch tags and loc, after which a browser window with graphed data will launch.
