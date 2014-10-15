
INSTALLDIR=/usr/sbin
MANDIR=/usr/share/man/man7

all: install

install:
	chmod +x ./src/easycron; cp ./src/easycron $(INSTALLDIR)/ 
	cp ./src/easycron.7 $(MANDIR)/

remove:
	rm $(INSTALLDIR)/easycron
	rm $(MANDIR)/easycron.7

