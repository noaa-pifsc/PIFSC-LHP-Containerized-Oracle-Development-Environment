#!/bin/bash

# define the container server hostname configuration information
HOSTNAME="pifsc-dev-docker-01-as"

# define the host's source root path
HOST_SOURCE_PATH="/tmp/CODE"

# define the path to the folder where the host bash scripts are contained
HOST_SCRIPTS_PATH="${HOST_SOURCE_PATH}/containerized_oracle_development_environment/deployment_scripts/host_scripts"

# define the privileged container user
PRIV_USER="docker-user"

# define the container git project URL
GIT_URL="git@github.com:noaa-pifsc/PIFSC-Containerized-Oracle-Development-Environment.git"
