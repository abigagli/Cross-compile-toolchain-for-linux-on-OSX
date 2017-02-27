#! /bin/bash
INSTALL_PATH=$HOME/GCC-CURRENT
FACTORY_ROOT=/Volumes/GNU_FACTORY/AUTOMATIC
TARBALLS_PATH=$FACTORY_ROOT/TARBALLS
TARGET=x86_64-linux
USE_NEWLIB=0
LINUX_ARCH=x86_64
CONFIGURATION_OPTIONS="--disable-multilib --disable-nls --disable-werror" # --disable-threads --disable-shared
PARALLEL_MAKE=-j4
BINUTILS_VERSION=binutils-2.27
GCC_VERSION=gcc-6.3.0
LINUX_KERNEL_VERSION=linux-3.16
GLIBC_VERSION=glibc-2.25
MPFR_VERSION=mpfr-3.1.5
GMP_VERSION=gmp-6.1.2
MPC_VERSION=mpc-1.0.3
ISL_VERSION=isl-0.16.1
CLOOG_VERSION=cloog-0.18.1

readlink ()
{
    greadlink "$@"
}
export -f readlink

sed ()
{
    gsed "$@"
}
export -f sed

export PATH=$INSTALL_PATH/bin:$PATH
