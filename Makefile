# Makefile for vlorb
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Library General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#
# $Id: Makefile,v 1.4.2.3.2.1 2003/05/23 11:07:46 jochem Exp $
#

PREFIX?= /usr/local
prefix?= ${PREFIX}
exec_prefix?= ${prefix}
bindir?= ${exec_prefix}/bin
mandir?= ${prefix}/man
docdir?= ${prefix}/share/doc

all:
	@echo -e '\nvlorb does not require building. Just type "make install" (as root)\n'

install:
	mkdir -p "${bindir}"
	install -m 0755 ./vlorb "${bindir}/vlorb"

	mkdir -p "${mandir}/man1"
	install -m 0644 ./vlorb.1 "${mandir}/man1/vlorb.1"

uninstall:
	rm "${bindir}/vlorb"
	rm "${mandir}/man1/vlorb.1"

install-doc:
	mkdir -p "${docdir}/vlorb"
	install -m 0644 ./README "${docdir}/vlorb/README"

uninstall-doc:
	rm "${docdir}/vlorb/README"
	rm -r "${docdir}/vlorb"

