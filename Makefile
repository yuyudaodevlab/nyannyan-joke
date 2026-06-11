PREFIX ?= /usr
DESTDIR ?=

install:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -d $(DESTDIR)$(PREFIX)/share/man/man1
	install -m 755 src/nyannyan $(DESTDIR)$(PREFIX)/bin/nyannyan
	install -m 644 man/nyannyan.1 $(DESTDIR)$(PREFIX)/share/man/man1/nyannyan.1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/nyannyan
	rm -f $(DESTDIR)$(PREFIX)/share/man/man1/nyannyan.1
