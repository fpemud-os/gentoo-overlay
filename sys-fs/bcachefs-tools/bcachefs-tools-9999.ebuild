# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3
EGIT_REPO_URI="https://evilpiepirate.org/git/bcachefs-tools.git/"

DESCRIPTION="Tools for bcachefs"
HOMEPAGE="https://bcachefs.org"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND=""
DEPEND="${RDEPEND}"

#src_install() {
#	dodir /usr/sbin/
#	dodir /usr/share/man/man8
#	dodir /lib/udev/rules.d
#	default
#}
