#!/bin/bash

REPO_URL="$1"
FOLDER_PATH="$2"

# Extraer nombre del repositorio desde la URL
REPO_DIR=$(basename "$REPO_URL" .git)

git clone --filter=blob:none --no-checkout "$REPO_URL"
cd "$REPO_DIR" || exit 1

git sparse-checkout init --cone
git sparse-checkout set "$FOLDER_PATH"
git checkout
