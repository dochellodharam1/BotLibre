echo `alias mvn` | cat - lib/deploy_maven_libs.sh > /tmp/out && mv /tmp/out lib/deploy_maven_libs.sh

cat lib/deploy_maven_libs.sh

. lib/deploy_maven_libs.sh
