
KEEP_M2_CACHE="true"

function check_install() {
    local var file=$1
    local var groupId=$2
    local var artifactId=$3 
    local var version=$4 
    local var packaging=$5 
    local var generatePom=$6
    local var progress=$7
    
    local var groupPath=`echo "$groupId" | sed -r "s@[.]@/@g"`
    local var fileName=$artifactId-$version.$packaging
    
    echo "Progress: processing $progress"
    
    if [ -f $M2/repository/$groupPath/$artifactId/$version/$fileName ]; then
        echo "Skiping install for $fileName"
    else
        INSTALL_CMD="$MAVEN_CMD install:install-file -Dfile=$file -DgroupId=$groupId -DartifactId=$artifactId -Dversion=$version -Dpackaging=$packaging -DgeneratePom=$generatePom" 
        $INSTALL_CMD 2>&1 | sed -u 's/^/       /'
    fi
    echo "Progress: processed $progress"
}

check_install './lib/boof/BoofCV-android-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-android' '0.23' 'jar' 'true' '1 of 116'
check_install './lib/boof/BoofCV-calibration-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-calibration' '0.23' 'jar' 'true' '2 of 116'
check_install './lib/boof/BoofCV-feature-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-feature' '0.23' 'jar' 'true' '3 of 116'
check_install './lib/boof/BoofCV-geo-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-geo' '0.23' 'jar' 'true' '4 of 116'
check_install './lib/boof/BoofCV-io-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-io' '0.23' 'jar' 'true' '5 of 116'
check_install './lib/boof/BoofCV-ip-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-ip' '0.23' 'jar' 'true' '6 of 116'
check_install './lib/boof/BoofCV-jcodec-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-jcodec' '0.23' 'jar' 'true' '7 of 116'
check_install './lib/boof/BoofCV-learning-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-learning' '0.23' 'jar' 'true' '8 of 116'
check_install './lib/boof/BoofCV-openkinect-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-openkinect' '0.23' 'jar' 'true' '9 of 116'
check_install './lib/boof/BoofCV-recognition-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-recognition' '0.23' 'jar' 'true' '10 of 116'
check_install './lib/boof/BoofCV-sfm-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-sfm' '0.23' 'jar' 'true' '11 of 116'
check_install './lib/boof/BoofCV-visualize-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-visualize' '0.23' 'jar' 'true' '12 of 116'
check_install './lib/boof/BoofCV-WebcamCapture-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-WebcamCapture' '0.23' 'jar' 'true' '13 of 116'
check_install './lib/boof/BoofCV-xuggler-0.23.jar' 'org.botlibre.required.lib' 'BoofCV-xuggler' '0.23' 'jar' 'true' '14 of 116'
check_install './lib/boof/core-0.29.jar' 'org.botlibre.required.lib' 'core' '0.29' 'jar' 'true' '15 of 116'
check_install './lib/boof/ddogleg-0.9.jar' 'org.botlibre.required.lib' 'ddogleg' '0.9' 'jar' 'true' '16 of 116'
check_install './lib/boof/dense64-0.29.jar' 'org.botlibre.required.lib' 'dense64' '0.29' 'jar' 'true' '17 of 116'
check_install './lib/boof/equation-0.29.jar' 'org.botlibre.required.lib' 'equation' '0.29' 'jar' 'true' '18 of 116'
check_install './lib/boof/georegression-0.10.jar' 'org.botlibre.required.lib' 'georegression' '0.10' 'jar' 'true' '19 of 116'
check_install './lib/boof/simple-0.29.jar' 'org.botlibre.required.lib' 'simple' '0.29' 'jar' 'true' '20 of 116'
check_install './lib/boof/xmlpull-1.1.3.1.jar' 'org.botlibre.required.lib' 'xmlpull' '1.1.3.1' 'jar' 'true' '21 of 116'
check_install './lib/boof/xpp3_min-1.1.4c.jar' 'org.botlibre.required.lib' 'xpp3_min' '1.1.4c' 'jar' 'true' '22 of 116'
check_install './lib/boof/xstream-1.4.7.jar' 'org.botlibre.required.lib' 'xstream' '1.4.7' 'jar' 'true' '23 of 116'
check_install './lib/botlibre/botlibre-ai-unknown.jar' 'org.botlibre.required.lib' 'botlibre-ai' 'unknown' 'jar' 'true' '24 of 116'
check_install './lib/facebook/facebook4j-core-2.4.8.jar' 'org.botlibre.required.lib' 'facebook4j-core' '2.4.8' 'jar' 'true' '25 of 116'
check_install './lib/heroku-webapp-runner/webapp-runner-9.0.30.0.jar' 'org.botlibre.required.lib' 'webapp-runner' '9.0.30.0' 'jar' 'true' '26 of 116'
check_install './lib/html/htmlcleaner2_1-0.1.jar' 'org.botlibre.required.lib' 'htmlcleaner2_1' '0.1' 'jar' 'true' '27 of 116'
check_install './lib/httpclient/commons-codec-1.6.jar' 'org.botlibre.required.lib' 'commons-codec' '1.6' 'jar' 'true' '28 of 116'
check_install './lib/httpclient/httpclient-4.2.5.1.jar' 'org.botlibre.required.lib' 'httpclient' '4.2.5.1' 'jar' 'true' '29 of 116'
check_install './lib/httpclient/httpclient-cache-4.2.5.jar' 'org.botlibre.required.lib' 'httpclient-cache' '4.2.5' 'jar' 'true' '30 of 116'
check_install './lib/httpclient/httpcore-4.2.4.jar' 'org.botlibre.required.lib' 'httpcore' '4.2.4' 'jar' 'true' '31 of 116'
check_install './lib/httpclient/httpmime-4.2.5.jar' 'org.botlibre.required.lib' 'httpmime' '4.2.5' 'jar' 'true' '32 of 116'
check_install './lib/irc/chatengine-unknown.jar' 'org.botlibre.required.lib' 'chatengine' 'unknown' 'jar' 'true' '33 of 116'
check_install './lib/jaxb/jaxb-api-2.2.jar' 'org.botlibre.required.lib' 'jaxb-api' '2.2' 'jar' 'true' '34 of 116'
check_install './lib/jpa/eclipselink-0.1.jar' 'org.botlibre.required.lib' 'eclipselink' '0.1' 'jar' 'true' '35 of 116'
check_install './lib/jpa/persistence-0.1.jar' 'org.botlibre.required.lib' 'persistence' '0.1' 'jar' 'true' '36 of 116'
check_install './lib/jpa/postgresql-42.2.11.jar' 'org.botlibre.required.lib' 'postgresql' '42.2.11' 'jar' 'true' '37 of 116'
check_install './lib/json/commons-beanutils-1.8.0.jar' 'org.botlibre.required.lib' 'commons-beanutils' '1.8.0' 'jar' 'true' '38 of 116'
check_install './lib/json/commons-collections-3.2.1.jar' 'org.botlibre.required.lib' 'commons-collections' '3.2.1' 'jar' 'true' '39 of 116'
check_install './lib/json/commons-lang-2.4.jar' 'org.botlibre.required.lib' 'commons-lang' '2.4' 'jar' 'true' '40 of 116'
check_install './lib/json/commons-logging-1.1.1.jar' 'org.botlibre.required.lib' 'commons-logging' '1.1.1' 'jar' 'true' '41 of 116'
check_install './lib/json/ezmorph-ezmorph-1.0.6.jar' 'org.botlibre.required.lib' 'ezmorph-ezmorph' '1.0.6' 'jar' 'true' '42 of 116'
check_install './lib/json/json-lib-2.3-jdk15.jar' 'org.botlibre.required.lib' 'json-lib-2.3' 'jdk15' 'jar' 'true' '43 of 116'
check_install './lib/jsp/servlet-api-unknown.jar' 'org.botlibre.required.lib' 'servlet-api' 'unknown' 'jar' 'true' '44 of 116'
check_install './lib/jsp/websocket-api-unknown.jar' 'org.botlibre.required.lib' 'websocket-api' 'unknown' 'jar' 'true' '45 of 116'
check_install './lib/junit/junit-unknown.jar' 'org.botlibre.required.lib' 'junit' 'unknown' 'jar' 'true' '46 of 116'
check_install './lib/mail/dsn-1.5.1.jar' 'org.botlibre.required.lib' 'dsn' '1.5.1' 'jar' 'true' '47 of 116'
check_install './lib/mail/gimap-1.5.1.jar' 'org.botlibre.required.lib' 'gimap' '1.5.1' 'jar' 'true' '48 of 116'
check_install './lib/mail/imap-1.5.1.jar' 'org.botlibre.required.lib' 'imap' '1.5.1' 'jar' 'true' '49 of 116'
check_install './lib/mail/javax.mail-1.5.1.jar' 'org.botlibre.required.lib' 'javax.mail' '1.5.1' 'jar' 'true' '50 of 116'
check_install './lib/mail/javax.mail-api-1.5.1.jar' 'org.botlibre.required.lib' 'javax.mail-api' '1.5.1' 'jar' 'true' '51 of 116'
check_install './lib/mail/mailapi-1.5.1.jar' 'org.botlibre.required.lib' 'mailapi' '1.5.1' 'jar' 'true' '52 of 116'
check_install './lib/mail/pop3-1.5.1.jar' 'org.botlibre.required.lib' 'pop3' '1.5.1' 'jar' 'true' '53 of 116'
check_install './lib/mail/smtp-1.5.1.jar' 'org.botlibre.required.lib' 'smtp' '1.5.1' 'jar' 'true' '54 of 116'
check_install './lib/marytts/marytts-lang-de-5.2.jar' 'org.botlibre.required.lib' 'marytts-lang-de' '5.2' 'jar' 'true' '55 of 116'
check_install './lib/marytts/marytts-lang-en-5.2.jar' 'org.botlibre.required.lib' 'marytts-lang-en' '5.2' 'jar' 'true' '56 of 116'
check_install './lib/marytts/marytts-lang-fr-5.2.jar' 'org.botlibre.required.lib' 'marytts-lang-fr' '5.2' 'jar' 'true' '57 of 116'
check_install './lib/marytts/marytts-lang-it-5.2.jar' 'org.botlibre.required.lib' 'marytts-lang-it' '5.2' 'jar' 'true' '58 of 116'
check_install './lib/marytts/marytts-lang-lb-5.2.jar' 'org.botlibre.required.lib' 'marytts-lang-lb' '5.2' 'jar' 'true' '59 of 116'
check_install './lib/marytts/marytts-lang-ru-5.2.jar' 'org.botlibre.required.lib' 'marytts-lang-ru' '5.2' 'jar' 'true' '60 of 116'
check_install './lib/marytts/marytts-lang-sv-5.2.jar' 'org.botlibre.required.lib' 'marytts-lang-sv' '5.2' 'jar' 'true' '61 of 116'
check_install './lib/marytts/marytts-lang-te-5.2.jar' 'org.botlibre.required.lib' 'marytts-lang-te' '5.2' 'jar' 'true' '62 of 116'
check_install './lib/marytts/marytts-lang-tr-5.2.jar' 'org.botlibre.required.lib' 'marytts-lang-tr' '5.2' 'jar' 'true' '63 of 116'
check_install './lib/marytts/marytts-runtime-5.2-jar-with-dependencies.jar' 'org.botlibre.required.lib' 'marytts-runtime-5.2-jar-with' 'dependencies' 'jar' 'true' '64 of 116'
check_install './lib/marytts/voice-bits1-5.2.jar' 'org.botlibre.required.lib' 'voice-bits1' '5.2' 'jar' 'true' '65 of 116'
check_install './lib/marytts/voice-bits1-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-bits1-hsmm' '5.2' 'jar' 'true' '66 of 116'
check_install './lib/marytts/voice-bits3-5.2.jar' 'org.botlibre.required.lib' 'voice-bits3' '5.2' 'jar' 'true' '67 of 116'
check_install './lib/marytts/voice-bits3-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-bits3-hsmm' '5.2' 'jar' 'true' '68 of 116'
check_install './lib/marytts/voice-camille-5.1-SNAPSHOT.jar' 'org.botlibre.required.lib' 'voice-camille-5.1' 'SNAPSHOT' 'jar' 'true' '69 of 116'
check_install './lib/marytts/voice-cmu-bdl-5.2.jar' 'org.botlibre.required.lib' 'voice-cmu-bdl' '5.2' 'jar' 'true' '70 of 116'
check_install './lib/marytts/voice-cmu-bdl-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-cmu-bdl-hsmm' '5.2' 'jar' 'true' '71 of 116'
check_install './lib/marytts/voice-cmu-nk-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-cmu-nk-hsmm' '5.2' 'jar' 'true' '72 of 116'
check_install './lib/marytts/voice-cmu-rms-5.2.jar' 'org.botlibre.required.lib' 'voice-cmu-rms' '5.2' 'jar' 'true' '73 of 116'
check_install './lib/marytts/voice-cmu-rms-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-cmu-rms-hsmm' '5.2' 'jar' 'true' '74 of 116'
check_install './lib/marytts/voice-cmu-slt-5.2.jar' 'org.botlibre.required.lib' 'voice-cmu-slt' '5.2' 'jar' 'true' '75 of 116'
check_install './lib/marytts/voice-cmu-slt-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-cmu-slt-hsmm' '5.2' 'jar' 'true' '76 of 116'
check_install './lib/marytts/voice-dfki-obadiah-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-obadiah' '5.2' 'jar' 'true' '77 of 116'
check_install './lib/marytts/voice-dfki-obadiah-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-obadiah-hsmm' '5.2' 'jar' 'true' '78 of 116'
check_install './lib/marytts/voice-dfki-ot-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-ot' '5.2' 'jar' 'true' '79 of 116'
check_install './lib/marytts/voice-dfki-ot-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-ot-hsmm' '5.2' 'jar' 'true' '80 of 116'
check_install './lib/marytts/voice-dfki-pavoque-neutral-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-pavoque-neutral' '5.2' 'jar' 'true' '81 of 116'
check_install './lib/marytts/voice-dfki-pavoque-neutral-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-pavoque-neutral-hsmm' '5.2' 'jar' 'true' '82 of 116'
check_install './lib/marytts/voice-dfki-poppy-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-poppy' '5.2' 'jar' 'true' '83 of 116'
check_install './lib/marytts/voice-dfki-poppy-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-poppy-hsmm' '5.2' 'jar' 'true' '84 of 116'
check_install './lib/marytts/voice-dfki-prudence-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-prudence' '5.2' 'jar' 'true' '85 of 116'
check_install './lib/marytts/voice-dfki-prudence-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-prudence-hsmm' '5.2' 'jar' 'true' '86 of 116'
check_install './lib/marytts/voice-dfki-spike-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-spike' '5.2' 'jar' 'true' '87 of 116'
check_install './lib/marytts/voice-dfki-spike-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-dfki-spike-hsmm' '5.2' 'jar' 'true' '88 of 116'
check_install './lib/marytts/voice-enst-camille-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-enst-camille-hsmm' '5.2' 'jar' 'true' '89 of 116'
check_install './lib/marytts/voice-enst-dennys-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-enst-dennys-hsmm' '5.2' 'jar' 'true' '90 of 116'
check_install './lib/marytts/voice-istc-lucia-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-istc-lucia-hsmm' '5.2' 'jar' 'true' '91 of 116'
check_install './lib/marytts/voice-jessica_voice-5.1-SNAPSHOT.jar' 'org.botlibre.required.lib' 'voice-jessica_voice-5.1' 'SNAPSHOT' 'jar' 'true' '92 of 116'
check_install './lib/marytts/voice-marylux-lb-5.2.jar' 'org.botlibre.required.lib' 'voice-marylux-lb' '5.2' 'jar' 'true' '93 of 116'
check_install './lib/marytts/voice-pierre-voice-5.1-SNAPSHOT.jar' 'org.botlibre.required.lib' 'voice-pierre-voice-5.1' 'SNAPSHOT' 'jar' 'true' '94 of 116'
check_install './lib/marytts/voice-upmc-jessica-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-upmc-jessica-hsmm' '5.2' 'jar' 'true' '95 of 116'
check_install './lib/marytts/voice-upmc-pierre-hsmm-5.2.jar' 'org.botlibre.required.lib' 'voice-upmc-pierre-hsmm' '5.2' 'jar' 'true' '96 of 116'
check_install './lib/marytts/voice-voxforge-ru-nsh-5.0-SNAPSHOT.jar' 'org.botlibre.required.lib' 'voice-voxforge-ru-nsh-5.0' 'SNAPSHOT' 'jar' 'true' '97 of 116'
check_install './lib/oswap/encoder-1.2.jar' 'org.botlibre.required.lib' 'encoder' '1.2' 'jar' 'true' '98 of 116'
check_install './lib/oswap/guava-unknown.jar' 'org.botlibre.required.lib' 'guava' 'unknown' 'jar' 'true' '99 of 116'
check_install './lib/oswap/jsr305-0.1.jar' 'org.botlibre.required.lib' 'jsr305' '0.1' 'jar' 'true' '100 of 116'
check_install './lib/oswap/owasp-java-html-sanitizer-unknown.jar' 'org.botlibre.required.lib' 'owasp-java-html-sanitizer' 'unknown' 'jar' 'true' '101 of 116'
check_install './lib/rest/asm-asm-3.1.jar' 'org.botlibre.required.lib' 'asm-asm' '3.1' 'jar' 'true' '102 of 116'
check_install './lib/rest/jackson-core-asl-1.9.2.jar' 'org.botlibre.required.lib' 'jackson-core-asl' '1.9.2' 'jar' 'true' '103 of 116'
check_install './lib/rest/jackson-jaxrs-1.9.2.jar' 'org.botlibre.required.lib' 'jackson-jaxrs' '1.9.2' 'jar' 'true' '104 of 116'
check_install './lib/rest/jackson-mapper-asl-1.9.2.jar' 'org.botlibre.required.lib' 'jackson-mapper-asl' '1.9.2' 'jar' 'true' '105 of 116'
check_install './lib/rest/jackson-xc-1.9.2.jar' 'org.botlibre.required.lib' 'jackson-xc' '1.9.2' 'jar' 'true' '106 of 116'
check_install './lib/rest/jersey-client-1.17.1.jar' 'org.botlibre.required.lib' 'jersey-client' '1.17.1' 'jar' 'true' '107 of 116'
check_install './lib/rest/jersey-core-1.17.1.jar' 'org.botlibre.required.lib' 'jersey-core' '1.17.1' 'jar' 'true' '108 of 116'
check_install './lib/rest/jersey-json-1.17.1.jar' 'org.botlibre.required.lib' 'jersey-json' '1.17.1' 'jar' 'true' '109 of 116'
check_install './lib/rest/jersey-multipart-1.17.1.jar' 'org.botlibre.required.lib' 'jersey-multipart' '1.17.1' 'jar' 'true' '110 of 116'
check_install './lib/rest/jersey-server-1.17.1.jar' 'org.botlibre.required.lib' 'jersey-server' '1.17.1' 'jar' 'true' '111 of 116'
check_install './lib/rest/jersey-servlet-1.17.1.jar' 'org.botlibre.required.lib' 'jersey-servlet' '1.17.1' 'jar' 'true' '112 of 116'
check_install './lib/rest/jettison-jettison-1.1.jar' 'org.botlibre.required.lib' 'jettison-jettison' '1.1' 'jar' 'true' '113 of 116'
check_install './lib/rest/jsr311-api-1.1.1.jar' 'org.botlibre.required.lib' 'jsr311-api' '1.1.1' 'jar' 'true' '114 of 116'
check_install './lib/rest/mimepull-1.7.jar' 'org.botlibre.required.lib' 'mimepull' '1.7' 'jar' 'true' '115 of 116'
check_install './lib/twitter/twitter4j-core-4.0.7.jar' 'org.botlibre.required.lib' 'twitter4j-core' '4.0.7' 'jar' 'true' '116 of 116'
