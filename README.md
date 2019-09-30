# vladislav_tarasevich_homework
## Task 1
1. Setup apache2 web server VM with mod_jk module.
![img](./img/jkON.png)
2. Setup 3 VMs with tomcat server and configure them. Tomcat instances surname-tomcat1, surname-tomcat2, surname-tomcat3
3. Add test.jsp from presentation to all tomcat servers.
![img](./img/testVM1.png)
![img](./img/testVM2.png)
![img](./img/testVM3.png)
4. Deploy clusterjsp.war on each tomcat:
Autodeploy on surname-tomcat1
![img](./img/deployVM1.png)
![img](./img/deployVM11.png)
Deploy via browse local host on surname-tomcat2
![img](./img/deployVM2.png)
![img](./img/deployVM22.png)
Deploy via ContextPath on surname-tomcat3
![img](./img/deployVM3.png)
![img](./img/deployVM33.png)
##Task2
1. Using mod_jk configure Tomcat Cluster with session persistence (replication):
a. Configure 4 separate Virtual hosts for surname-tomcat1.lab, surname-tomcat2.lab, surname-tomcat3.lab and Tomcat Cluster - surname-cluster.lab.
![img](./img/vhost.png)
b. Configure mod_jk – worker.properties
![img](./img/wp.png)
c. Setup cluster and check that you can reach clusterjsp app via surname-cluster.lab.
d. Check session persistence by stopping active tomcat server.
![img](./img/clust1.png)
![img](./img/clust2.png)
![img](./img/clust3.png)
##Task3
1. Configure Log4j2 logging for one of the tomcat servers.
![img](./img/last.png)
