FROM registry.fedoraproject.org/fedora:latest

COPY README.md /

RUN <<EORUN
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
find /var/{log,cache} -type f ! -empty -delete

EORUN

ARG buildid="unset"
ARG NAME=dev-toolbox

LABEL com.github.containers.toolbox="true" \
	name="$NAME" \
	version="$buildid" \
	vendor="Dirk Gottschalk" \
	usage="This image is meant to be used with the toolbox(1) command" \
	summary="Developer Toolbx containers" \
	maintainer="Dirk Gottschalk"
