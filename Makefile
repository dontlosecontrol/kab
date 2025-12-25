
PREFIX = /usr/local

kab: kab.sh kab.awk ka_biblia.tsv
	cat kab.sh > $@
	echo 'exit 0' >> $@
	echo "#EOF" >> $@
	tar czf - kab.awk ka_biblia.tsv >> $@
	chmod +x $@

test: kab.sh
	shellcheck -s sh kab.sh

clean:
	rm -f kab

install: kab
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f kab $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/kab

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/kab

.PHONY: test clean install uninstall
