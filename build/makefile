CWD=$(shell pwd)
PFX=/usr/local
BUILD=$(CWD)/build
PKG=$(CWD)
LD_LIBRARY_PATH=$(PFX)/lib:DYLD_LIBRARY_PATH

all: gmp mpfr mpc binutils gcc jdb

gmp:
	tar xjf $(PKG)/gmp-5.0.2.tar.bz2 && \
	cd gmp-5.0.2 && \
	./configure --prefix=$(PFX) &&\
	make &&\
	make install

mpfr:
	tar xjf $(PKG)/mpfr-3.1.5.tar.gz && \
	cd mpfr-3.1.5 && \
	./configure --prefix=$(PFX) --with-gmp=$(PFX) && \
	make &&\
	make install

mpc:
	tar xzf $(PKG)/mpc-0.9.tar.gz && \
	cd mpc-0.9 && \
	./configure --prefix=$(PFX) --with-gmp=$(PFX) --with-mpfr=$(PFX) && \
	make && \
	make install

binutils:
	tar xjf $(PKG)/binutils-2.21.1.tar.bz2 && \
	cd binutils-2.21.1 && \
	./configure --prefix=$(PFX) --target=i386-jos-elf --disable-werror && \
	make && \
	make install

gcc:
	tar xjf $(PKG)/gcc-4.8.5.tar.bz2 && \
	cd gcc-4.8.5 && \
	mkdir build && \
	cd build && \
	../configure --prefix=$(PFX) --with-gmp=$(PFX) --with-mpfr=$(PFX) --with-mpc=$(PFX) \
    	--target=i386-jos-elf --disable-werror \
    	--disable-libssp --disable-libmudflap --with-newlib \
    	--without-headers --enable-languages=c \
    	CC=/usr/local/bin/gcc-6 && \
	make all-gcc && \
	make install-gcc && \
	make all-target-libgcc && \
	make install-target-libgcc

gdb:
	cd $(BUILD) && \
	tar xjf $(PKG)/gdb-7.3.1.tar.bz2 && \
	cd gdb-7.3.1 && \
	./configure --prefix=$(PFX) --target=i386-jos-elf --program-prefix=i386-jos-elf- \
   		--disable-werror && \
	make all && \
	make install

clean:
	rm -rf $(PFX) $(BUILD)
