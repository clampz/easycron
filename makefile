
INSTALLDIR=/usr/sbin

all: install

install:
	cp ./src/easycron $(INSTALLDIR)/
	cp ./src/easycron.7 /usr/share/man/man7/

remove:
	rm $(INSTALLDIR)/easycron
	rm /usr/share/man/man7/easycron.7

