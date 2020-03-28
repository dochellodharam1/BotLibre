def path="D:/WORKSPACE/HOW/BotLibre/lib"

def installFnUnix = """
KEEP_M2_CACHE="true"

function check_install() {
    local var file=\$1
    local var groupId=\$2
    local var artifactId=\$3 
    local var version=\$4 
    local var packaging=\$5 
    local var generatePom=\$6
    local var progress=\$7
    
    local var groupPath=`echo "\$groupId" | sed -r "s@[.]@/@g"`
    local var fileName=\$artifactId-\$version.\$packaging
    
    echo "Progress: processing \$progress"
    
    if [ -f \$M2/repository/\$groupPath/\$artifactId/\$version/\$fileName ]; then
        echo "Skiping install for \$fileName"
    else
        INSTALL_CMD="\$MAVEN_CMD install:install-file -Dfile=\$file -DgroupId=\$groupId -DartifactId=\$artifactId -Dversion=\$version -Dpackaging=\$packaging -DgeneratePom=\$generatePom" 
        \$INSTALL_CMD 2>&1 | sed -u 's/^/       /'
    fi
    echo "Progress: processed \$progress"
}

"""
def win = new File("${path}/install.bat")
def dependencies = new File("${path}/dep.txt")
dependencies << "<dependencies>"
def unix = new File("${path}/install.sh")
unix << installFnUnix
def index = 1;
def count = 0;
def lib = new File(path);
lib.eachFile {if(it.isDirectory()) { it.eachFile{ if(it.name.endsWith("jar")) count++;}}}
lib.eachFile {dir->
    if(dir.isDirectory()) {
        dir.eachFile{f->
            if(f.name.endsWith(".jar")){
                def filePath="./lib/${dir.name}/${f.name}"
                def groupId="org.botlibre.required.lib"
                def ind = f.name.lastIndexOf("-");
                def artifactId=f.name.substring(0, ind)
                def version=f.name.substring(ind + 1) - ".jar"
                def progress = "${index++} of ${count}"
                def cmd = "mvn install:install-file -Dfile=${filePath} -DgroupId=${groupId} -DartifactId=${artifactId} -Dversion=${version} -Dpackaging=jar -DgeneratePom=true \n"
                win << "CALL ${cmd}\nECHO Progress: processed ${progress} \n"
                unix << "check_install '${filePath}' '${groupId}' '${artifactId}' '${version}' 'jar' 'true' '${progress}'\n"
                dependencies << """
                    <dependency>
                        <groupId>${groupId}</groupId>
                        <artifactId>${artifactId}</artifactId>
                        <version>${version}</version>
                        <scope>\${scope}</scope>
                    </dependency>   
                """
            }
        }
    }
}
dependencies << "</dependencies>"
return "DONE"