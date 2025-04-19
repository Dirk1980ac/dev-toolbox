FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN <<END_OF_BLOCK

dnf upgrade -y

dnf install -y \
	glib2-devel \
	pcsc-lite-devel \
	libevent-devel \
	check-devel \
	mariadb-devel \
	automake \
	autoconf \
	autoconf-archive \
	gdb \
	zsh

dnf -y clean all

END_OF_BLOCK
