#!/bin/bash
install_tomcat(){
    groupadd tomcat
    mkdir -p /opt/tomcat
    useradd -s /bin/nologin -g tomcat -d /opt/tomcat tomcat
    cd ~
    wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-8/v8.5.47/bin/apache-tomcat-8.5.47.tar.gz
    tar -zxvf apache-tomcat-8.5.47.tar.gz -C /opt/tomcat --strip-components=1
    chown -R tomcat /opt/tomcat
    yum -y install java-1.8.0-openjdk.x86_64 java-devel git
    cd /tmp
    wget https://repo1.maven.org/maven2/javax/servlet/jstl/1.2/jstl-1.2.jar
    wget https://repo1.maven.org/maven2/com/google/code/gson/gson/2.8.1/gson-2.8.1.jar
    git clone https://github.com/TarasevichVV/vladislav_tarasevich_homework.git
    cd vladislav_tarasevich_homework/
    git checkout java_day4
    git pull
    cp /tmp/*.jar /opt/tomcat/lib/
    cp TestApp.war /opt/tomcat/webapps/
    cp tomcat.service /etc/systemd/system/tomcat.service
    systemctl start tomcat
    systemctl enable tomcat
    sleep 2
    cp web.xml /opt/tomcat/webapps/TestApp/WEB-INF/web.xml
    chown -R tomcat /opt/tomcat
    systemctl restart tomcat
}
install_tomcat


