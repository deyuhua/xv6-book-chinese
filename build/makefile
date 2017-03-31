CWD=$(shell pwd)
PFX=$(CWD)/local
DIST=$(CWD)/dist
PKG=$(CWD)

all: init gmp mpfr mpc binutils gcc jdb

init:
	rm -rf $(DIST) $(PFX)
	mkdir $(DIST) $(PFX)

gmp:
	cd $(DIST)
	tar -xf $(PKG)/gmp-5.0.2.tar.bz2 -C $(DIST)&&\
	cd $(DIST)/gmp-5.0.2 && \
	./configure --prefix=$(PFX) &&\
	make &&\
	make install

mpfr:
	cd $(DIST)
	tar -xf $(PKG)/mpfr-3.1.5.tar.gz -C $(DIST)/ && \
	cd $(DIST)/mpfr-3.1.5 && \
	./configure --prefix=$(PFX) --with-gmp=$(PFX) && \
	make && \
	make install

mpc:
	cd $(DIST)
	tar xzf $(PKG)/mpc-0.9.tar.gz -C $(DIST)/ && \
	cd $(DIST)/mpc-0.9 && \
	./configure --prefix=$(PFX) --with-gmp=$(PFX) --with-mpfr=$(PFX) && \
	make && \
	make install

binutils:
	cd $(DIST)
	tar -xf $(PKG)/binutils-2.21.1.tar.bz2 -C $(DIST)/ && \
	cd $(DIST)/binutils-2.21.1 && \
	./configure --prefix=$(PFX) --target=i386-jos-elf --disable-werror && \
	make && \
	make install

gcc:
	export PATH=$(PFX)/bin:$(PATH) &&\
	export LD_LIBRARY_PATH=$(PFX)/lib:$(LD_LIBRARY_PATH) &&\
	cd $(DIST)
	tar -xf $(PKG)/gcc-4.8.5.tar.bz2 -C $(DIST)/ && \
	cd $(DIST)/gcc-4.8.5 && \
	mkdir build && \
	cd build && \
	../configure --prefix=$(PFX) --with-gmp=$(PFX) --with-mpfr=$(PFX) --with-mpc=$(PFX) \
	--target=i386-jos-elf --disable-werror \
    	--disable-libssp --disable-libmudflap --with-newlib \
    	--without-headers --enable-languages=c && \
	make all-gcc && \
	make install-gcc && \
	make all-target-libgcc && \
	make install-target-lib

gdb:
	cd $(DIST) && \
	tar -xf $(PKG)/gdb-7.3.1.tar.bz2 -C $(DIST)/ && \
	cd i$(DIST)/gdb-7.3.1 && \
	./configure --prefix=$(PFX) --target=i386-jos-elf --program-prefix=i386-jos-elf- \
   		--disable-werror && \
	make all && \
	make install

clean:
	rm -rf $(DIST) $(PFX)
