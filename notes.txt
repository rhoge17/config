
# Create central repository

git init --bare

# Make local working repository

git clone path/to/repo

# Add and commit a file into local repo

git commit -am 'Message'

# Push commit to central repo

git push

# Create another local repo

git clone path/to/repo

# Actually get the files

git pull

# Update a local repo to the central repo

git remote update

# Get any changed files from central repo

git pull



