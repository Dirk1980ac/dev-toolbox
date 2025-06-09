FROM registry.fedoraproject.org/fedora:latest

ENV imagename=dev-toolbox
ARG buildid="unset"

LABEL com.github.containers.toolbox="true"
LABEL license="MIT"
LABEL name=${imagename}
LABEL org.opencontainers.image.license="MIT"
LABEL org.opencontainers.image.name=${imagename}
LABEL org.opencontainers.image.url="https://github.com/Dirk1980ac/dev-toolbox"
LABEL org.opencontainers.image.vendor="Dirk Gottschalk"
LABEL org.opencontainers.image.version=${buildid}
LABEL vendor="Dirk Gottschalk"
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
