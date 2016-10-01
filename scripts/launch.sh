#!/usr/bin/env bash

# Config
GIT_BIN_DIRECTORY=/usr/bin
DOCKER_BIN_DIRECTORY=/usr/bin
DOCKER_COMPOSER_BIN_DIRECTORY=/usr/local/bin

# Load local config
if [ -e ".local" ]; then
    source .local
fi

# Run
${GIT_BIN_DIRECTORY}/git pull
${DOCKER_BIN_DIRECTORY}/docker cp data/config.yaml sinopiaenvironment_sinopia_1:/opt/sinopia
${DOCKER_COMPOSER_BIN_DIRECTORY}/docker-compose up -d --force-recreate

# Custom setup
if [ -e "scripts/custom.sh" ]; then
    source scripts/custom.sh
fi
