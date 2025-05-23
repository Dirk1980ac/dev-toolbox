FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN <<END_OF_BLOCK
set -euo pipefail

dnf -y upgrade

dnf -y install \
	glib2-devel \
	pcsc-lite-devel \
	libevent-devel \
	check-devel \
	mariadb-devel \
	automake \
	autoconf \
	autoconf-archive \
	gdb \
	powerline \
	powerline-fonts \
	pcsc-tools \
	zsh \
	mc \
	valgrind \
	rpmbuild \
	@c-development

dnf -y clean all

END_OF_BLOCK
