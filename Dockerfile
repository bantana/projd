FROM centos:ssh

# Generally a good idea to have these, extensions sometimes need them
# RUN locale-gen en_US.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# RUN yum -y install something

ADD myapp /root/app/myapp
# Change the workdir
WORKDIR /root/app

# VOLUME [ "/sys/fs/cgroup" ]

ENV ADDR ":8000"
EXPOSE 8000
# EXPOSE 22
# CMD ["/root/app/myapp"]
# COMMAND FOR THE IMAGE
ENTRYPOINT ["./myapp"]
