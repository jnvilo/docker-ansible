FROM rockylinux/rockylinux:latest

RUN  dnf -y install epel-release && \
     dnf makecache --refresh && \
     dnf -y install python39 python39-pip openssh-clients git &&\
     pip-3.9 install ansible tree

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait

