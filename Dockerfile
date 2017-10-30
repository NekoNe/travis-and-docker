FROM centos:7

ADD run.sh /root/
RUN chmod +x /root/run.sh

RUN yum install -y \
        clang \
        cmake \
        git

ENTRYPOINT ["/root/run.sh"]

