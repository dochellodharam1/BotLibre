MVN_ALIAS=`alias mvn`
MVN_CMD=`echo "$MVN_ALIAS" | cut -d"'" -f2`

sed -i "s@mvn@$MVN_CMD@g" lib/deploy_maven_libs.sh

. lib/deploy_maven_libs.sh
