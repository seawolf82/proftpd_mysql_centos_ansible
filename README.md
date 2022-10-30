# proftpd_mysql_centos_ansible


Tested on:

    Almalinux 8
    Almalinux 9
    RockyLinux 8
    RockyLinux 9
    Centos 7

Tested on:

    2.9 Ansible version


This script install proftpd with mariadb and manage virtual users

To install proftpd with mariadb run:

ansible-playbook -i hosts site.yaml

To uninstall proftpd with mariadb run:

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
