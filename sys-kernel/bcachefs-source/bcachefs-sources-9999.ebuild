# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ETYPE=sources
#K_DEFCONFIG=bcmrpi_defconfig
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-r3
EGIT_REPO_URI="https://evilpiepirate.org/git/bcachefs.git -> bcachefs-linux.git"
EGIT_CHECKOUT_DIR="${WORKDIR}/linux-${PV}-raspberrypi"
EGIT_CLONE_TYPE="shallow"

DESCRIPTION="bcachefs kernel sources"
HOMEPAGE="https://bcachefs.org"

src_unpack() {
	git-r3_src_unpack
	unpack_set_extraversion
}
