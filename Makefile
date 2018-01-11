PREFIX = /usr/local
LIBDIR = lib
INSTALL = install

all:

install: all
	$(INSTALL) -m 0755 -d '$(DESTDIR)$(PREFIX)/include'
	$(INSTALL) -m 0644 include/DeckLinkAPI.h '$(DESTDIR)$(PREFIX)/include/'
	$(INSTALL) -m 0644 include/DeckLinkAPI_i.c '$(DESTDIR)$(PREFIX)/include/'
	$(INSTALL) -m 0644 include/DeckLinkAPIVersion.h '$(DESTDIR)$(PREFIX)/include/'

uninstall:
	rm -f '$(DESTDIR)$(PREFIX)/include/DeckLinkAPI.h'
	rm -f '$(DESTDIR)$(PREFIX)/include/DeckLinkAPI_i.c'
	rm -f '$(DESTDIR)$(PREFIX)/include/DeckLinkAPIVersion.h'

.PHONY: all install uninstall
