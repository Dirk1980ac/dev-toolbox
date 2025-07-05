FROM registry.fedoraproject.org/fedora:latest

ENV TOOLBOX_NAME="dev-toolbox"
ARG buildid="unset"

LABEL com.github.containers.toolbox="true"
LABEL license="MIT"
LABEL name=${TOOLBOX_NAME}
LABEL org.opencontainers.image.license="MIT"
LABEL org.opencontainers.image.name=${TOOLBOX_NAME}
LABEL org.opencontainers.image.url="https://github.com/Dirk1980ac/dev-toolbox"
LABEL org.opencontainers.image.vendor="Dirk Gottschalk"
LABEL org.opencontainers.image.version=${buildid}
LABEL version=${buildid}

RUN <<END_OF_BLOCK
set -euo pipefail

dnf -y upgrade

dnf -y --setopt="install_weak_deps=False" install \
	mariadb-connector-c-devel \
	autoconf-archive \
	pcsc-lite-devel \
	libevent-devel \
	systemd-devel \
	check-devel \
	glib2-devel \
	automake \
	autoconf \
	valgrind \
	rpmbuild \
	intltool \
	libtool \
	make \
	lshw \
	gdb \
	gcc \
	zsh \
	less \
	mc

dnf -y clean all

END_OF_BLOCK
