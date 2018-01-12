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

[extras]
name=CentOS-$VERSION - Extras
baseurl=http://vault.centos.org/$VERSION/extras/$ARCH/
END
}

mk_run_image () {
	local VERSION=$1
	local ARCH=${2:-x86_64}
	cat <<END
ERROR=0
TAG=
sh ./mkimage-yum.sh -y yum.conf/centos$VERSION-$ARCH -p "yum curl yum-utils" -v centos || ERROR=1
if [ \$ERROR = 0 ] ; then
	docker tag centos:$(get_tag $VERSION) ywatase/centos:$VERSION
	docker push ywatase/centos:$VERSION
	$(add_short_tag $VERSION)
else
	echo $VERSION-$ARCH create failled >> error.log
fi
END
}

get_tag () {
	local VERSION=$1
	if [ $VERSION = "4.9" ] ; then
		echo 4.8
	elif [ $VERSION = "5.0" ] || [ $VERSION = "5.1" ] ; then
		echo 5
	else
		echo $VERSION
	fi
}
add_short_tag () {
	local VERSION=$1
	if [ ${VERSION%%.*} = 7 ] ; then
		echo "docker tag ywatase/centos:$VERSION ywatase/centos:${VERSION%.*}; docker push ywatase/centos:${VERSION%.*}"
	fi
}


echo '#!/bin/bash' > run.sh
for Arch in x86_64
do
	for Ver in 4.{4..9} 5.{1..11} 6.{1..8} 7.0.1406 7.1.1503 7.2.1511 7.3.1611
	do
		mk_yum_conf $Ver > yum.conf/centos$Ver-$Arch
		mk_run_image $Ver $Arch | grep -vE '^\s*$' >> run.sh
	done
done
