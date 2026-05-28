#!/bin/bash

	# define the database scripts mapping using the pipe character as a delimiter
	# The elements should contain encoded values with the "|" character as the delimiter: sql path (within container)|sql script file|User Secret Name|Password Secret Name|Script Password Secrets (this can be one or more optional pipe-delimited secret names when a password is injected into the script - examples include a CREATE USER command) 

	# create schemas, apex workspace, apex developer account
	DB_SCRIPTS_MAP+=("${BUILD_PATH}/../../projects/LHP/modules/LHP/SQL|@dev_container_setup/create_docker_schemas.sql|oracle_admin_user|oracle_pwd|lhp_pwd|lhp_app_pwd|lhp_apx_user|lhp_apx_pwd")
	
	# deploy LHP DB
	DB_SCRIPTS_MAP+=("${BUILD_PATH}/../../projects/LHP/modules/LHP/SQL|@automated_deployments/deploy_dev_container.sql|lhp_user|lhp_pwd")

	# deploy LHP Apex app
	DB_SCRIPTS_MAP+=("${BUILD_PATH}/../../projects/LHP/modules/LHP/SQL|@automated_deployments/deploy_apex_dev_container.sql|lhp_app_user|lhp_app_pwd")

	# define the array of compose files that are used by the individual projects (specify the path relative to the core/build directory
	COMPOSE_FILES+=("../../projects/LHP/build/lhp_secrets.yml")
	
	# add the secrets
	SECRET_MAPPING_ARR+=(
		["lhp_user"]="LHP_DB_USER"
		["lhp_pwd"]="LHP_DB_PWD"
		["lhp_app_user"]="LHP_APP_USER"
		["lhp_app_pwd"]="LHP_APP_PWD"
		["lhp_apx_user"]="LHP_APX_USER"
		["lhp_apx_pwd"]="LHP_APX_PWD"
	)

	