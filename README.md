# vladislav_tarasevich_homework
## screenshot 1
a. Screenshots of test web pages being opened in browser
![img1](./img/1.png)
## screenshot 2
b. Screenshots of web server configurations used in tasks (virtual host, logging, etc.)
![img2](./4.png)
## screenshot 3
c. Screenshots of output of web server checks, e.g. httpd -S
![img3](./img/2.png)
## screenshot 4
d.Screenshot of debug console to confirm mod_rewrite is working while opening /
![img4](./img/root.png)
## screenshot 5
e. Screenshot of debug console to confirm mod_rewrite is working while opening /index.html
![img5](./index.png)
## screenshot 6
f. Screenshot of debug console to confirm mod_rewrite is working while opening /none-existing-page
![img6](./for.png)
## screenshot 7
g. Screenshot of virtual host with cronolog configuration, output of tree command showing layout of log files created by cronolog 
![img7](./9.png)
# screenshot 8
h. Screenshot of virtual host configuration with logging to syslog. Screenshots of syslog entries related to access/error web server logging.
![img8](./10.png)
##Check
1. What is apache graceful restart
The USR1 or graceful signal causes the parent process to advise the children to exit after their current request (or to exit immediately if they're not serving anything). The parent re-reads its configuration files and re-opens its log files. As each child dies off the parent replaces it with a child from the new generation of the configuration, which begins serving new requests immediately.

