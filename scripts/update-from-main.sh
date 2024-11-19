#!/bin/bash

# pull common files from the "main" repo

# Set the repository URL
REPO_URL="https://raw.githubusercontent.com/fxlin/uva-os-main/main"
GIT_REPO_URL="https://github.com/fxlin/uva-os-main.git"

# Check if the current directory is a git repository
if [ -d ".git" ]; then
    # Check if the remote URL matches
    remote_url=$(git config --get remote.origin.url)
    if [ "$remote_url" == "$GIT_REPO_URL" ]; then
        echo "Warning: The local repository already has a remote pointing to '$GIT_REPO_URL'."
        echo "Exiting to avoid overwriting files in the tracked repository."
        exit 1
    fi
fi

# Define the list of remote and local file paths
declare -A FILE_LIST=(
    ["scripts/update-from-main.sh"]="scripts/update-from-main.sh"
    ["cleanall.sh"]="cleanall.sh"
    ["cleanuser.sh"]="cleanuser.sh"
    ["dbg-rpi3qemu.sh"]="dbg-rpi3qemu.sh"
    ["run-rpi3qemu.sh"]="run-rpi3qemu.sh"
    ["CREDITS"]="CREDITS"
    ["LICENSE"]="LICENSE"
)

# Loop through each entry in the list
for remote_file in "${!FILE_LIST[@]}"; do
    local_file=${FILE_LIST[$remote_file]}

    # Construct the full URL for the remote file
    REMOTE_URL="${REPO_URL}/${remote_file}"

    # Check if the remote file exists in the repository
    response_code=$(curl -s -o /dev/null -w "%{http_code}" "$REMOTE_URL")
    if [ "$response_code" -ne 200 ]; then
        echo "Error: Remote file '$REMOTE_URL' not found."
        continue
    fi

    # Fetch the file and overwrite the local file
    echo "Fetching '$remote_file' to overwrite '$local_file'..."
    curl -s "$REMOTE_URL" -o "$local_file"

    if [ $? -eq 0 ]; then
        echo "Successfully fetched and updated '$local_file'."
    else
        echo "Error: Failed to fetch '$remote_file'."
    fi
done

echo "Done."
