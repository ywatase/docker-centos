#!/bin/bash
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.1-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.1 | grep '^5.1$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.1
else
	echo 5.1-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.2-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.2 | grep '^5.2$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.2
else
	echo 5.2-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.3-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.3 | grep '^5.3$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.3
else
	echo 5.3-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.4-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.4 | grep '^5.4$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.4
else
	echo 5.4-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.5-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.5 | grep '^5.5$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.5
else
	echo 5.5-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.6-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.6 | grep '^5.6$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.6
else
	echo 5.6-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.7-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.7 | grep '^5.7$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.7
else
	echo 5.7-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.8-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.8 | grep '^5.8$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.8
else
	echo 5.8-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.9-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.9 | grep '^5.9$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.9
else
	echo 5.9-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.10-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.10 | grep '^5.10$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.10
else
	echo 5.10-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.11-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5.11 | grep '^5.11$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:5 | grep  '^5$')}
	docker tag centos:$TAG  ywatase/centos:5.11
else
	echo 5.11-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.1-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6.1 | grep '^6.1$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6 | grep  '^6$')}
	docker tag centos:$TAG  ywatase/centos:6.1
else
	echo 6.1-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.2-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6.2 | grep '^6.2$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6 | grep  '^6$')}
	docker tag centos:$TAG  ywatase/centos:6.2
else
	echo 6.2-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.3-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6.3 | grep '^6.3$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6 | grep  '^6$')}
	docker tag centos:$TAG  ywatase/centos:6.3
else
	echo 6.3-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.4-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6.4 | grep '^6.4$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6 | grep  '^6$')}
	docker tag centos:$TAG  ywatase/centos:6.4
else
	echo 6.4-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.5-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6.5 | grep '^6.5$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6 | grep  '^6$')}
	docker tag centos:$TAG  ywatase/centos:6.5
else
	echo 6.5-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.6-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6.6 | grep '^6.6$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6 | grep  '^6$')}
	docker tag centos:$TAG  ywatase/centos:6.6
else
	echo 6.6-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.7-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6.7 | grep '^6.7$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6 | grep  '^6$')}
	docker tag centos:$TAG  ywatase/centos:6.7
else
	echo 6.7-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.8-x86_64 -p "yum curl" -v centos || ERROR=1
if [ $ERROR = 0 ] ; then
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6.8 | grep '^6.8$')}
	: ${TAG:=$(docker images --format '{{.Tag}}' centos:6 | grep  '^6$')}
	docker tag centos:$TAG  ywatase/centos:6.8
else
	echo 6.8-x86_64 create failled >> error.log
fi
