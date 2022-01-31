# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Tools for bcachefs"
HOMEPAGE="https://bcachefs.org"
EGIT_REPO_URI="https://evilpiepirate.org/git/bcachefs-tools.git/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-libs/userspace-rcu
         app-crypt/libscrypt
         dev-libs/libaio
         dev-libs/libsodium
         app-arch/lz4
         sys-apps/keyutils"
DEPEND="${RDEPEND}"

src_prepare() {
	default
	sed -i 's/PREFIX?=\/usr\/local/PREFIX?=\/usr/g' Makefile
	sed -i 's/$(DESTDIR)$(PREFIX)\/lib\//$(DESTDIR)$(PREFIX)\/lib64\//g' Makefile
}

src_install() {
	default
	rm -rf ${D}/usr/share/initramfs-tools
}
