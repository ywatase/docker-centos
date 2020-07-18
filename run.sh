#!/bin/bash
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos4.4-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:4.4 ywatase/centos:4.4
	docker push ywatase/centos:4.4
else
	echo 4.4-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos4.5-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:4.5 ywatase/centos:4.5
	docker push ywatase/centos:4.5
else
	echo 4.5-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos4.6-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:4.6 ywatase/centos:4.6
	docker push ywatase/centos:4.6
else
	echo 4.6-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos4.7-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:4.7 ywatase/centos:4.7
	docker push ywatase/centos:4.7
else
	echo 4.7-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos4.8-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:4.8 ywatase/centos:4.8
	docker push ywatase/centos:4.8
else
	echo 4.8-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos4.9-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:4.8 ywatase/centos:4.9
	docker push ywatase/centos:4.9
else
	echo 4.9-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.1-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5 ywatase/centos:5.1
	docker push ywatase/centos:5.1
else
	echo 5.1-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.2-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.2 ywatase/centos:5.2
	docker push ywatase/centos:5.2
else
	echo 5.2-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.3-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.3 ywatase/centos:5.3
	docker push ywatase/centos:5.3
else
	echo 5.3-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.4-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.4 ywatase/centos:5.4
	docker push ywatase/centos:5.4
else
	echo 5.4-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.5-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.5 ywatase/centos:5.5
	docker push ywatase/centos:5.5
else
	echo 5.5-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.6-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.6 ywatase/centos:5.6
	docker push ywatase/centos:5.6
else
	echo 5.6-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.7-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.7 ywatase/centos:5.7
	docker push ywatase/centos:5.7
else
	echo 5.7-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.8-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.8 ywatase/centos:5.8
	docker push ywatase/centos:5.8
else
	echo 5.8-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.9-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.9 ywatase/centos:5.9
	docker push ywatase/centos:5.9
else
	echo 5.9-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.10-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.10 ywatase/centos:5.10
	docker push ywatase/centos:5.10
else
	echo 5.10-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos5.11-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:5.11 ywatase/centos:5.11
	docker push ywatase/centos:5.11
else
	echo 5.11-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.1-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.1 ywatase/centos:6.1
	docker push ywatase/centos:6.1
else
	echo 6.1-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.2-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.2 ywatase/centos:6.2
	docker push ywatase/centos:6.2
else
	echo 6.2-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.3-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.3 ywatase/centos:6.3
	docker push ywatase/centos:6.3
else
	echo 6.3-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.4-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.4 ywatase/centos:6.4
	docker push ywatase/centos:6.4
else
	echo 6.4-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.5-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.5 ywatase/centos:6.5
	docker push ywatase/centos:6.5
else
	echo 6.5-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.6-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.6 ywatase/centos:6.6
	docker push ywatase/centos:6.6
else
	echo 6.6-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.7-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.7 ywatase/centos:6.7
	docker push ywatase/centos:6.7
else
	echo 6.7-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.8-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.8 ywatase/centos:6.8
	docker push ywatase/centos:6.8
else
	echo 6.8-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.9-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.9 ywatase/centos:6.9
	docker push ywatase/centos:6.9
else
	echo 6.9-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos6.10-x86_64  -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:6.10 ywatase/centos:6.10
	docker push ywatase/centos:6.10
else
	echo 6.10-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos7.0.1406-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:7.0.1406 ywatase/centos:7.0.1406
	docker push ywatase/centos:7.0.1406
	docker tag ywatase/centos:7.0.1406 ywatase/centos:7.0; docker push ywatase/centos:7.0
else
	echo 7.0.1406-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos7.1.1503-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:7.1.1503 ywatase/centos:7.1.1503
	docker push ywatase/centos:7.1.1503
	docker tag ywatase/centos:7.1.1503 ywatase/centos:7.1; docker push ywatase/centos:7.1
else
	echo 7.1.1503-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos7.2.1511-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:7.2.1511 ywatase/centos:7.2.1511
	docker push ywatase/centos:7.2.1511
	docker tag ywatase/centos:7.2.1511 ywatase/centos:7.2; docker push ywatase/centos:7.2
else
	echo 7.2.1511-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos7.3.1611-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:7.3.1611 ywatase/centos:7.3.1611
	docker push ywatase/centos:7.3.1611
	docker tag ywatase/centos:7.3.1611 ywatase/centos:7.3; docker push ywatase/centos:7.3
else
	echo 7.3.1611-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos7.4.1708-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:7.4.1708 ywatase/centos:7.4.1708
	docker push ywatase/centos:7.4.1708
	docker tag ywatase/centos:7.4.1708 ywatase/centos:7.4; docker push ywatase/centos:7.4
else
	echo 7.4.1708-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos7.5.1804-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:7.5.1804 ywatase/centos:7.5.1804
	docker push ywatase/centos:7.5.1804
	docker tag ywatase/centos:7.5.1804 ywatase/centos:7.5; docker push ywatase/centos:7.5
else
	echo 7.5.1804-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos7.6.1810-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:7.6.1810 ywatase/centos:7.6.1810
	docker push ywatase/centos:7.6.1810
	docker tag ywatase/centos:7.6.1810 ywatase/centos:7.6; docker push ywatase/centos:7.6
else
	echo 7.6.1810-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos7.7.1908-x86_64 -v -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:7.7.1908 ywatase/centos:7.7.1908
	docker push ywatase/centos:7.7.1908
	docker tag ywatase/centos:7.7.1908 ywatase/centos:7.7; docker push ywatase/centos:7.7
else
	echo 7.7.1908-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos7.8.2003-x86_64  -p yum-utils -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:7.8.2003 ywatase/centos:7.8.2003
	docker push ywatase/centos:7.8.2003
	docker tag ywatase/centos:7.8.2003 ywatase/centos:7.8; docker push ywatase/centos:7.8
else
	echo 7.8.2003-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos8.0.1905-x86_64 -v -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:8.0.1905 ywatase/centos:8.0.1905
	docker push ywatase/centos:8.0.1905
	docker tag ywatase/centos:8.0.1905 ywatase/centos:8.0; docker push ywatase/centos:8.0
else
	echo 8.0.1905-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos8.1.1911-x86_64 -v -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:8.1.1911 ywatase/centos:8.1.1911
	docker push ywatase/centos:8.1.1911
	docker tag ywatase/centos:8.1.1911 ywatase/centos:8.1; docker push ywatase/centos:8.1
else
	echo 8.1.1911-x86_64 create failled >> error.log
fi
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos8.2.2004-x86_64  -p curl centos || ERROR=1
if [ $ERROR = 0 ] ; then
	docker tag centos:8.2.2004 ywatase/centos:8.2.2004
	docker push ywatase/centos:8.2.2004
	docker tag ywatase/centos:8.2.2004 ywatase/centos:8.2; docker push ywatase/centos:8.2
else
	echo 8.2.2004-x86_64 create failled >> error.log
fi
