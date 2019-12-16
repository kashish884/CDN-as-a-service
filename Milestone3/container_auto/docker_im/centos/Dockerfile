# Client Server Container
FROM centos8:latest

# Install IP-UTILS
RUN yum -y update && \
    yum install -y net-tools && \
    yum install -y iputils && \
    yum install -y iproute && \
    yum install -y dhclient && \
    yum clean all

# For configuring OPEN-SSH
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in ; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);
RUN rm -rf /lib/systemd/system/multi-user.target.wants/;
RUN rm -rf /etc/systemd/system/.wants/;
RUN rm -rf /lib/systemd/system/local-fs.target.wants/;
RUN rm -rf /lib/systemd/system/sockets.target.wants/udev;
RUN rm -rf /lib/systemd/system/sockets.target.wants/initctl;
RUN rm -rf /lib/systemd/system/basic.target.wants/;
RUN rm -rf /lib/systemd/system/anaconda.target.wants/*;
RUN yum install -y openssh-server
RUN yum install -y openssh-clients

# Enable Password less SSH
RUN sed "s/#PermitRootLogin/PermitRootLogin/" < /etc/ssh/sshd_config > temp_config.txt
RUN cp temp_config.txt /etc/ssh/sshd_config
RUN mkdir -p /root/.ssh
ADD id_rsa.pub /root/.ssh/authorized_keys
RUN chmod 700 /root/.ssh
RUN chmod 640 /root/.ssh/authorized_keys

ADD ./entrypoint /entrypoint
RUN chmod 755 /entrypoint

ENTRYPOINT [ "/entrypoint"]
CMD [ "/usr/sbin/init" ]
