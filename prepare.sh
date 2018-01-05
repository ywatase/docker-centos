#!/bin/sh
set -eu
if ! [ -e mkimage-yum.sh ] ; then
	curl -LO https://raw.githubusercontent.com/moby/moby/master/contrib/mkimage-yum.sh
	patch -p0 < mkimage-yum.sh.patch
fi
[ -d yum.conf ] || mkdir yum.conf
mk_yum_conf () {
	local VERSION=$1
	local ARCH=${2:-x86_64}
	cat <<END
[main]
cachedir=/var/cache/yum/$ARCH/$VERSION
keepcache=1
debuglevel=2
logfile=/var/log/yum.log
exactarch=1
obsoletes=1
gpgcheck=0
plugins=1
reposdir=/var/tmp/yum.repos.d/

[base]
name=CentOS-$VERSION - Base
baseurl=http://vault.centos.org/$VERSION/os/$ARCH/

[updates]
name=CentOS-$VERSION - Updates
baseurl=http://vault.centos.org/$VERSION/os/$ARCH/
END
}

mk_run_image () {
	local VERSION=$1
	local ARCH=${2:-x86_64}
	cat <<END >> run.sh
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos$VERSION-$ARCH -p "yum curl" -v centos || ERROR=1
if [ \$ERROR = 0 ] ; then
	: \${TAG:=\$(docker images --format '{{.Tag}}' centos:${VERSION} | grep '^${VERSION}$')}
	: \${TAG:=\$(docker images --format '{{.Tag}}' centos:${VERSION%%.*} | grep  '^${VERSION%%.*}$')}
	docker tag centos:\$TAG  ywatase/centos:$VERSION
else
	echo $VERSION-$ARCH create failled >> error.log
fi
END
}

echo '#!/bin/bash' > run.sh

#for Arch in i386
#do
#    for Ver in 4.{4..9}
#    do
#           mk_yum_conf $Ver $Arch > yum.conf/centos$Ver-$Arch
#        mk_run_image $Ver $Arch
#    done
#done

for Arch in x86_64
do
	for Ver in 5.{1..11} 6.{1..8}
	do
		mk_yum_conf $Ver > yum.conf/centos$Ver-$Arch
		mk_run_image $Ver $Arch
	done
done
