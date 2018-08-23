OPTS="-Djavax.net.ssl.keyStore=<CERTPATH>
-Djavax.net.ssl.keyStorePassword=<PASSWORD>
-Djavax.net.ssl.keyStoreType=PKCS12
-Dmaven.wagon.http.ssl.insecure=true
-Dmaven.wagon.http.ssl.allowall=true
-Djsse.enableSNIExtension=false
-Djavax.net.ssl.trustStore=<jssecacertsPATH>
-Djavax.net.ssl.trustStorePassword=<PASSWORD>
-Djavax.net.ssl.trustStoreType=JKS
-Xms512m -Xmx512m
-XX:MaxPermSize=512m"

export JAVA_OPTS=$OPTS
