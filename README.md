# proftpd_mysql_centos_ansible


This script install on centos7 proftpd with mariadb and manage virtual users


To install proftpd with mariadb on centos7 run:

ansible-playbook -i hosts site.yaml

To uninstall proftpd with mariadb on centos7 run:

ansible-playbook -i hosts deprovision.yaml

Adding Tags to permit run only specific task of playbook

Tags:

upgrade
package
mariadb
proftpd
ntp

For example, to launch only task regarding upgrade os, run:
 
ansible-playbook -vv --tags "upgrade" -i hosts site.yaml
