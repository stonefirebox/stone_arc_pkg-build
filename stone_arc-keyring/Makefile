V=20240413

PREFIX = /usr
TRUSTED= $(shell cat stone-arc-trusted | cut -d: -f1)
REVOKED= $(shell cat stone_arc-revoked)

update:
	gpg --recv-keys $(TRUSTED) $(REVOKED)
	gpg --export --armor $(TRUSTED) $(REVOKED) > stone_arc.gpg

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 stone_arc{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/stone_arc{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
