#!/bin/bash
source /vagrant/var
installs1(){
    echo "Start server installation"
    yum install -y mariadb mariadb-server net-tools vim
    yum install -y http://repo.zabbix.com/zabbix/4.2/rhel/7/x86_64/zabbix-release-4.2-1.el7.noarch.rpm
    yum install -y zabbix-server-mysql zabbix-web-mysql zabbix-agent
    /usr/bin/mysql_install_db --user=mysql
    systemctl enable mariadb
    systemctl start mariadb
    mysql -uroot -e "create database zabbix character set utf8 collate utf8_bin"
    mysql -uroot -e "grant all privileges on zabbix.* to $user@localhost identified by '$password'"
    zcat /usr/share/doc/zabbix-server-mysql-*/create.sql.gz | mysql -uzabbix -p$password zabbix
    cp /vagrant/1/zabbix_server.conf /etc/zabbix/zabbix_server.conf
    cp /vagrant/1/httpd.conf /etc/httpd/conf/httpd.conf
    cp /vagrant/1/zabbix.conf /etc/httpd/conf.d/zabbix.conf
    systemctl start zabbix-server
    systemctl enable zabbix-server
    systemctl start zabbix-agent
    systemctl enable zabbix-agent
    systemctl start httpd
    systemctl enable http
    echo "End server installation"
}

installs2(){
    echo "Start agent installation"
    yum -y install epel-release 
    yum -y install http://repo.zabbix.com/zabbix/4.2/rhel/7/x86_64/zabbix-release-4.2-1.el7.noarch.rpm
    yum -y install net-tools vim zabbix-agent
    cp /vagrant/2/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf 
    systemctl start zabbix-agent
    systemctl enable zabbix-agent
    echo "End server installation"
}
[[ $(hostname) == "Zabbix-S" ]] && installs1 || installs2

