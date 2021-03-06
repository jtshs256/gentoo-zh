# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /home/cvsroot/ebuildteam/dev-libs/libchewing-svn/libchewing-svn-0.2.6.9999.ebuild,v 1.1 2005/04/19 00:08:13 scsi Exp $

inherit flag-o-matic eutils subversion

IUSE=""
DESCRIPTION="Library for Chinese Phonetic input method"
HOMEPAGE="http://chewing.csie.net/"
#SRC_URI="http://chewing.csie.net/download/libchewing/${P}.tar.gz"
ESVN_REPO_URI="https://svn.csie.net/chewing/libchewing/trunk"
ESVN_PROJECT="libchewing"
#ESVN_PATCHES="*.diff"
#ESVN_BOOTSTRAP="./autogen.sh"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86"

RDEPEND="virtual/libc"
DEPEND="${RDEPEND}
    dev-util/pkgconfig
	"

src_configure(){
	eautoreconf || die "./configure failed"
}

src_compile(){
	emake -j1 || die "make failed"
}

src_install(){
	make install DESTDIR=${D} || die "install failed"
}
