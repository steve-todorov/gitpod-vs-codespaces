#!/bin/bash

set -exo pipefail

CODESPACE_VSCODE_FOLDER=${CODESPACE_VSCODE_FOLDER:-$(pwd)}

echo "Download GitHub CLI" > /dev/null
curl -o /tmp/gh_2.42.1_linux_amd64.tar.gz -L https://github.com/cli/cli/releases/download/v2.42.1/gh_2.42.1_linux_amd64.tar.gz
cd /tmp
tar xzf gh_2.42.1_linux_amd64.tar.gz
mkdir -p ~/.local/{bin,share}
mv -f /tmp/gh_2.42.1_linux_amd64/bin/* ~/.local/bin/
mv -f /tmp/gh_2.42.1_linux_amd64/share/* ~/.local/share
chmod +x ~/.local/bin/gh

echo "Build Gradle Project" > /dev/null
cd $CODESPACE_VSCODE_FOLDER
gradle build

echo "Start application" > /dev/null
gradle bootRun
