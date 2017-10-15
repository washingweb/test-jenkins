# 
# branch names:
#   prod/portal
#   test/portal
#   feature/portal/feature-desc
#   jenkins/portal

IFS=/ read -a branch_parts <<< $GIT_BRANCH

build_type=${branch_parts[1]}
app_name=${branch_parts[2]}

assets_sub_directory=/$build_type/$app_name

export APP_NAME=$app_name
export ASSETS_PUBLIC_PATH=$assets_sub_directory/
export OSS_PREFIX=oss://dy-app${assets_sub_directory}

echo $APP_NAME
echo $ASSETS_PUBLIC_PATH
echo $OSS_PREFIX
