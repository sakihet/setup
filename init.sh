#!/bin/bash
set -e
set -u

echo "Running init.sh"

if ! command -v brew >/dev/null 2>&1; then
  echo "Install homebrew"
  # ref: https://brew.sh/
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

USERNAME=$(whoami)
PARENT_DIR="${HOME}/${USERNAME}/src/github.com/sakihet"
TARGET_DIR="${PARENT_DIR}/setup"
REPO_URL="git@github.com:sakihet/setup.git"

echo "Checking for setup repository at ${TARGET_DIR}"

if [ -d "$TARGET_DIR" ]; then
    echo "Directory already exists."
else
    echo "Directory not found."
    if [ ! -d "$PARENT_DIR" ]; then
        echo "Creating parent directory at ${PARENT_DIR}"
        mkdir -p "$PARENT_DIR"
    fi

    echo "Cloning setup repository into ${PARENT_DIR}"

    cd "$PARENT_DIR" || exit 1
    if git clone "$REPO_URL"; then
        echo "Repository cloned successfully."
    else
        echo "Failed to clone repository."
        exit 1
    fi
fi
