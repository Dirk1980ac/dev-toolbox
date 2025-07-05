FROM registry.fedoraproject.org/fedora:latest

ENV TOOLBOX_NAME="dev-toolbox"
ARG buildid="unset"

LABEL com.github.containers.toolbox="true" \
	license="MIT" \
	name=${TOOLBOX_NAME} \
	org.opencontainers.image.license="MIT" \
	org.opencontainers.image.name=${TOOLBOX_NAME} \
	org.opencontainers.image.url="https://github.com/Dirk1980ac/dev-toolbox" \
	org.opencontainers.image.vendor="Dirk Gottschalk" \
	org.opencontainers.image.version=${buildid}

RUN <<EORUN
set -euo pipefail

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
EORUN
