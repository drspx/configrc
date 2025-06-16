#!/usr/bin/env zsh
,insert-certificate-java-home-jvm(){
sudo keytool -import -storepass changeit -keystore $JAVA_HOME/lib/security/cacerts -alias DS-root -file $1;
}

