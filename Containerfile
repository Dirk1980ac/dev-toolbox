FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN <<END_OF_BLOCK
set -euo pipefail

dnf -y upgrade

dnf -y --setopt="install_weak_deps=False" install \
	mariadb-connector-c-devel \
	autoconf-archive \
	pcsc-lite-devel \
	libevent-devel \
	check-devel \
	glib2-devel \
	pcsc-tools \
	automake \
	autoconf \
	valgrind \
	rpmbuild \
	intltool \
	libtool \
	lshw \
	gdb \
	gcc \
	mc

dnf -y clean all

END_OF_BLOCK
