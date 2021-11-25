# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{3_6,3_7,3_8,3_9} )

inherit distutils-r1 git-r3

DESCRIPTION="Ensures only some optimized harddisk layouts are used."
HOMEPAGE=""
EGIT_REPO_URI="https://github.com/fpemud-os/strict_hdds.git"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux"
IUSE="+lvm"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/crcmod
         dev-python/psutil
         lvm? ( sys-fs/lvm2 )
         sys-fs/dosfstools
         sys-apps/util-linux"

src_prepare() {
        eapply_user
        if ! use lvm ; then
                rm -rf "${WORKDIR}/${P}/python3/strict_hdds"/layout_*lvm*.py
        fi
}
