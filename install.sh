#!/bin/bash
rpm -aq | grep yum|xargs rpm -e --nodeps
rpm -ivh python-iniparse-0.3.1-2.1.el6.noarch.rpm
rpm -ivh yum-metadata-parser-1.1.2-16.el6.x86_64.rpm
rpm -ivh yum-3.2.29-69.el6.centos.noarch.rpm yum-plugin-fastestmirror-1.1.30-30.el6.noarch.rpm
cd /etc/yum.repos.d/
mv rhel-source.repo rhel-source.repo.bak
wget http://mirrors.163.com/.help/CentOS6-Base-163.repo
sed -i 's/\$releasever/6/g' CentOS6-Base-163.repo
yum clean all
yum makecache