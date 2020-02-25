export CWD=`pwd`
export PFX=$CWD/local
export PATH=$PFX/bin:$PATH
export LD_LIBRARY_PATH=$PFX/lib:$LD_LIBRARY_PATH      # On Mac OS X, use DYLD_LIBRARY_PATH

mkdir $PFX

tar xjf gmp-5.0.2.tar.bz2
cd gmp-5.0.2
./configure --prefix=$PFX
make
make install             # This step may require privilege (sudo make install)
cd $CWD

tar -xf mpfr-3.1.5.tar.gz
cd mpfr-3.1.5
./configure --prefix=$PFX --with-gmp=$PFX
make
make install             # This step may require privilege (sudo make install)
cd $CWD

tar xzf mpc-0.9.tar.gz
cd mpc-0.9
./configure --prefix=$PFX --with-gmp=$PFX --with-mpfr=$PFX
make
make install             # This step may require privilege (sudo make install)
cd $CWD


tar xjf binutils-2.21.1.tar.bz2
cd binutils-2.21.1
./configure --prefix=$PFX --target=i386-jos-elf --disable-werror
make
make install             # This step may require privilege (sudo make install)
cd $CWD

i386-jos-elf-objdump -i
# Should produce output like:
# BFD header file version (GNU Binutils) 2.21.1
# elf32-i386
#  (header little endian, data little endian)
#   i386...


tar -xf gcc-4.8.5.tar.bz2
cd gcc-4.8.5
mkdir build              # GCC will not compile correctly unless you build in a separate directory
cd build
../configure --prefix=$PFX --with-gmp=$PFX --with-mpfr=$PFX --with-mpc=$PFX \
    --target=i386-jos-elf --disable-werror \
    --disable-libssp --disable-libmudflap --with-newlib \
    --without-headers --enable-languages=c
make all-gcc
make install-gcc         # This step may require privilege (sudo make install-gcc)
make all-target-libgcc
make install-target-libgcc     # This step may require privilege (sudo make install-target-libgcc)
cd $CWD

i386-jos-elf-gcc -v
# Should produce output like:
# Using built-in specs.
# COLLECT_GCC=i386-jos-elf-gcc
# COLLECT_LTO_WRAPPER=/usr/local/libexec/gcc/i386-jos-elf/4.6.1/lto-wrapper
# Target: i386-jos-elf
