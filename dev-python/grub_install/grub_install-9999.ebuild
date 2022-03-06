# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit distutils-r1 git-r3

DESCRIPTION="Pure python implementation of grub2 installing process."
HOMEPAGE="https://github.com/fpemud-os/grub_install"
EGIT_REPO_URI="https://github.com/fpemud-os/grub_install.git"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
        dev-python/psutil
        dev-python/pyparted
        sys-boot/grub"
RDEPEND=""
