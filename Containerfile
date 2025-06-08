FROM registry.fedoraproject.org/fedora-minimal:latest

ENV imagename=dev-toolbox
ARG buildid="unset"

LABEL com.github.containers.toolbox="true"
LABEL license="MIT"
LABEL name=${imagename}
LABEL org.opencontainers.image.license="MIT"
LABEL org.opencontainers.image.name=${imagename}
LABEL org.opencontainers.image.url=
LABEL org.opencontainers.image.vendor="Dirk Gottschalk"
LABEL org.opencontainers.image.version=${buildid}
LABEL vendor="Dirk Gottschalk"
LABEL version=${buildid}

RUN <<END_OF_BLOCK
set -euo pipefail

echo ${imagename} > /etc/hostname

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
	zsh \
	mc

dnf -y clean all

END_OF_BLOCK
