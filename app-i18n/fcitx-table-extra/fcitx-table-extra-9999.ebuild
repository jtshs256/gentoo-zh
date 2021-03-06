# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit cmake-utils git-2

DESCRIPTION="fcitx-table-extra provides extra table for Fcitx, including Boshiamy, Zhengma, and Cangjie3, Cangjie5."
HOMEPAGE="http://code.google.com/p/fcitx https://github.com/fcitx/fcitx-table-extra"
SRC_URI=""
EGIT_REPO_URI="https://github.com/fcitx/fcitx-table-extra.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""
RESTRICT="mirror"

RDEPEND=">=app-i18n/fcitx-4.2.1[table]"
RDEPEND="${RDEPEND}
	dev-util/intltool
	sys-devel/gettext"
