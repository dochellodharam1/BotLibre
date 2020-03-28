rm -rf lib
if [ -d target/ROOT ]; then
	rm -rf target/ROOT
fi
for DIR in ".m2" ".maven" ; do
  rm -rf $CACHE_DIR/$DIR 
  rm -rf $BUILD_DIR/$DIR
done