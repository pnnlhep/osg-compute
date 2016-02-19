FROM pnnlhep/osg-base
MAINTAINER Malachi Schram "malachi.schram@pnnl.gov"

RUN yum install -y centos-release-SCL
RUN yum install -y xfsprogs python27
RUN yum install -y osg-ca-certs osg-wn-client osg-client-condor
RUN yum install -y git readline-devel bzip2-devel zlib-devel ncurses-devel openssl-devel
RUN yum install -y fontconfig libxml2 openssl098e libGLU libXpm binutils-devel gcc libgfortran python-devel subversion gcc-gfortran gcc-c++ binutils binutils-devel python-devel libxml2-devel mesa-libGL-devel glew-devel libX11-devel libXpm-devel libXft-devel libXext-devel glew mesa-libGL-devel which
RUN yum install -y cmake expat expat-devel xerces-c xerces-c-devel
RUN yum install -y acl attr bc bind-utils binutils bzip2 cpio crudini curl diffutils dos2unix expect file findutils gawk git grep gzip jq less net-tools patch rsync screen sed subversion sysstat tar tcsh telnet time traceroute tree unzip util-linux wget which xz xz-lzma-compat zip

ADD ./start.sh /etc/start.sh
RUN chmod +x /etc/start.sh

CMD ["/etc/start.sh"]
