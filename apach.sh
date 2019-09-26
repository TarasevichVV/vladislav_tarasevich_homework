#!/bin/bash

# Inistallation some useful applications
#em iy -q install curl wget httpd epel-release gcc
#yum -q -y install cronolog arp apr-devel apr-util apr-util-devel pcre pcre-devel

# Enable firewall for connection to apache 
#firewall-cmd --add-service=http --permanent
#firewall-cmd --reload
#firewall-cmd --list-all

# Installation apache2 from wget
#wget -P /home/Apache http://ftp.byfly.by/pub/apache.org//httpd/httpd-2.4.41.tar.gz
#tar -zxf /home/Apache/httpd-2.4.41.tar.gz -C /home/Apache

#cd /usr/local/apache2
#./configure --prefix=/usr/local/apache2
#make
#make install

#Conf files 
#vhost -- /etc/httpd/conf.d/httpd-vhosts.conf
#main -- /etc/httpd/conf/httpd.conf 




















