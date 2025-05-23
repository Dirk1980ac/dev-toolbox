FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN <<END_OF_BLOCK
set -euo pipefail

dnf -y upgrade

dnf -y --setopt="install_weak_deps=False" install \
	glib2-devel \
	pcsc-lite-devel \
	libevent-devel \
	check-devel \
	mariadb-connector-c-devel \
	automake \
	autoconf \
	autoconf-archive \
	powerline \
	powerline-fonts \
	pcsc-tools \
	valgrind \
	rpmbuild \
	gdb \
	gcc \
	mc

dnf -y clean all

END_OF_BLOCK
