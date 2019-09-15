FROM centos:7.6.1810

COPY miktex-2.9.7140-1.x86_64.rpm /tmp/miktex-2.9.7140-1.x86_64.rpm
RUN yum localinstall -y /tmp/miktex-2.9.7140-1.x86_64.rpm
RUN mpm --admin --update-db \
 && initexmf --admin --mklinks \
 && mpm --admin --verbose --package-level=basic --upgrade
