FROM centos:8

RUN whoami \
    && curl -O https://download.oracle.com/otn_software/linux/instantclient/19800/oracle-instantclient19.8-basic-19.8.0.0.0-1.x86_64.rpm \
    && dnf install libaio -y \
    && dnf install python3 -y \
    && rpm -ivh oracle-instantclient*.rpm \
    && rm oracle-instantclient*.rpm	


ENTRYPOINT ["/bin/bash"]
