# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

inherit git-r3

DESCRIPTION="Meta ebuild for Fpemud OS Rescue CD"
SRC_URI=""
EGIT_REPO_URI="https://github.com/fpemud-os/livecd-scripts"

KEYWORDS="x86 amd64"
LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="dev-python/strict_hdds"
