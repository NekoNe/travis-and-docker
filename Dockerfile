FROM centos:7

ADD run.sh /root/
RUN chmod +x /root/run.sh

ADD . /root/project/

RUN yum install -y \
        clang \
        gcc \
        cmake \
        make

RUN cd /root/project && ls -l && mkdir -p build && cd build && cmake .. && make

ENTRYPOINT ["/root/run.sh"]

