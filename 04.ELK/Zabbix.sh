#!/bin/bash

installs1(){
    cd /tmp
    rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
    cp /vagrant/conf/elastic.repo /etc/yum.repos.d/
    yum install -y elasticsearch
    rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
    cp /vagrant/conf/kibana.repo /etc/yum.repos.d/
    yum install -y kibana
    cp /vagrant/kibana.yml /etc/kibana/kibana.yml
    cp /vagrant/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
    systemctl start elasticsearch
    systemctl start kibana
    systemctl enable elasticsearch
    systemctl enable kibana
}

installs2(){
    /vagrant/Day4.sh
    chmod 755 -R /opt/tomcat/logs/
    rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
    cp /vagrant/conf/logstash.repo /etc/yum.repos.d/
    yum install -y vim net-tools logstash
    cp /vagrant/logstash.conf /etc/logstash/conf.d/
    systemctl start logstash
    systemctl enable logstash
}

[[ $(hostname) == "Zabbix-S" ]] && installs1 || installs2

