# vladislav_tarasevich_homework
## Task 1
1. Configure hybrid multi-process multi-threaded httpd server (i.e., worker). Set server fqdn to worker.name.surname
![img1](./img/wsn.png)
![img2](./img/wpmp.png)
![img3](./img/wbr.png)
2. Set MaxRequestWorkers to 50. If necessary, change other module settings accordingly and start httpd server.
![img4](./img/wconf.png)
3. Show that httpd is using worker module.
![img5](./img/worker.png)
4. Using ab benchmarking tool prove that server can process only 50 simultaneous requests.
![img6](./img/w50prove.png)
5. Show process tree, which includes workers and threads.
![img7](./img/wtree.png)
6. Stop httpd server and configure non-threaded httpd server (i.e., prefork). Set server fqdn to prefork.name.surname
![img8](./img/psn.png)
![img9](./img/pmpm.png)
7. Set MaxRequestWorkers to 25. If necessary, change other module settings accordingly and start httpd server.
![img10](./img/pconf.png)
8. Show that httpd is using prefork module.
![img11](./img/pgrep.png)
9. Using ab benchmarking tool prove that server can process only 25 simultaneous requests.
![img12](./img/pprove.png)
10. Show process tree, which includes workers.
![img13](./img/ptree.png)
## Task 2
1. Review proxying
2. Review mod_proxy configuration
3. Configure httpd as a forward proxy with authentication. Set proxy fqdn to forward.name.surname
![img14](./img/proxyconf.png)
![img15](./img/proxyb.png)
![img16](./img/forwardsn.png)
4. Grant access to internet via proxy only for user Name_Surname.
![img17](./img/proxyuser.png)
![img18](./img/fproxybyfly.png)
![img19](./img/connectbyfly.png)
5. Configure httpd as a reverse proxy to any url of your choice. Set proxy fqdn to reverse.name.surname
![img20](./img/reversesn.png)
![img21](./img/prp.png)
