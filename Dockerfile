FROM centos:7

ADD run.sh /root/
RUN chmod +x /root/run.sh

ADD * /root/

RUN yum install -y \
        clang \
        cmake \
        make

RUN cd /root && ls -l && mkdir -p build && cd build && cmake .. && make

ENTRYPOINT ["/root/run.sh"]

