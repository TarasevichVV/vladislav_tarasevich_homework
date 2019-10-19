#!/bin/bash

source /vagrant/var
installs1(){
    yum install -y mariadb mariadb-server   
    yum install -y http://repo.zabbix.com/zabbix/4.2/rhel/7/x86_64/zabbix-release-4.2-1.el7.noarch.rpm
    yum install -y zabbix-server-mysql zabbix-web-mysql zabbix-agent 
    /usr/bin/mysql_install_db --user=mysql
    systemctl enable mariadb
    systemctl start mariadb
    mysql -uroot -e "create database zabbix character set utf8 collate utf8_bin"
    mysql -uroot -e "grant all privileges on zabbix.* to $user@localhost identified by '$password'"
    zcat /usr/share/doc/zabbix-server-mysql-*/create.sql.gz | mysql -uzabbix -p$password zabbix
    cp /vagrant/confs/zabbix_server.conf /etc/zabbix/zabbix_server.conf
    cp /vagrant/confs/httpd.conf /etc/httpd/conf/httpd.conf
    cp /vagrant/confs/zabbix.conf /etc/httpd/conf.d/zabbix.conf
    systemctl start zabbix-server
    systemctl enable zabbix-server
    systemctl start zabbix-agent
    systemctl enable zabbix-agent
    systemctl start httpd
    systemctl enable http

}

installs2(){
    yum -y install epel-release 
    yum -y install http://repo.zabbix.com/zabbix/4.2/rhel/7/x86_64/zabbix-release-4.2-1.el7.noarch.rpm
    yum -y install zabbix-agent 
    cp /vagrant/confs/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf 
    systemctl start zabbix-agent
    systemctl enable zabbix-agent
    /vagrant/autoagent.sh
}

[[ $(hostname) == "Zabbix-S" ]] && installs1 || installs2

