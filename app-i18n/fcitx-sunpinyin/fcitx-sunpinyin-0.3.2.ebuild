# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit cmake-utils

DESCRIPTION="Fcitx Wrapper for sunpinyin."
HOMEPAGE="http://code.google.com/p/fcitx"
SRC_URI="http://fcitx.googlecode.com/files/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=app-i18n/fcitx-4.1.2
	=app-i18n/sunpinyin-9999"
RDEPEND="${RDEPEND}
	dev-util/intltool
	sys-devel/gettext"

