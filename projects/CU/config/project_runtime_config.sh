#!/bin/sh

##### Container Configuration Variables: #####

	#--- Primary schema created by deployment script, used to check if the database is installed. If the APP_SCHEMA_NAME exists then do not run the database initialization processes ---
	APP_SCHEMA_NAME=CEN_UTILS

##### Project Configuration Variables: #####

	# define the container git project URL
	GIT_URL="--branch Branch_CODE_v1.4_install git@github.com:noaa-pifsc/PIFSC-CU-Containerized-Oracle-Development-Environment.git"