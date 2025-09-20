#!/bin/bash
builddir=`dirname "$0"`
GCONV_PATH="${builddir}/iconvdata"

usage () {
cat << EOF
Usage: $0 [OPTIONS] <program> [ARGUMENTS...]

  --tool=TOOL  Run with the specified TOOL. It can be strace, rpctrace,
               valgrind or container. The container will run within
               support/test-container.  For strace and valgrind,
               additional arguments can be passed after the tool name.
EOF

  exit 1
}

toolname=default
while test $# -gt 0 ; do
  case "$1" in
    --tool=*)
      toolname="${1:7}"
      shift
      ;;
    --*)
      usage
      ;;
    *)
      break
      ;;
  esac
done

if test $# -eq 0 ; then
  usage
fi

case "$toolname" in
  default)
    exec   env GCONV_PATH="${builddir}"/iconvdata LOCPATH="${builddir}"/localedata LC_ALL=C  "${builddir}"/elf/ld-linux-x86-64.so.2 --library-path "${builddir}":"${builddir}"/math:"${builddir}"/elf:"${builddir}"/dlfcn:"${builddir}"/nss:"${builddir}"/nis:"${builddir}"/rt:"${builddir}"/resolv:"${builddir}"/mathvec:"${builddir}"/support:"${builddir}"/nptl ${1+"$@"}
    ;;
  strace*)
    exec $toolname  -EGCONV_PATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/iconvdata  -ELOCPATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/localedata  -ELC_ALL=C  /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf/ld-linux-x86-64.so.2 --library-path /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/math:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/dlfcn:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nss:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nis:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/rt:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/resolv:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/mathvec:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/support:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nptl ${1+"$@"}
    ;;
  rpctrace)
    exec rpctrace  -EGCONV_PATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/iconvdata  -ELOCPATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/localedata  -ELC_ALL=C  /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf/ld-linux-x86-64.so.2 --library-path /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/math:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/dlfcn:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nss:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nis:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/rt:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/resolv:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/mathvec:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/support:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nptl ${1+"$@"}
    ;;
  valgrind*)
    exec env GCONV_PATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/iconvdata LOCPATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/localedata LC_ALL=C $toolname  /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf/ld-linux-x86-64.so.2 --library-path /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/math:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/dlfcn:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nss:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nis:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/rt:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/resolv:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/mathvec:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/support:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nptl ${1+"$@"}
    ;;
  container)
    exec env GCONV_PATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/iconvdata LOCPATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/localedata LC_ALL=C  /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf/ld-linux-x86-64.so.2 --library-path /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/math:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/dlfcn:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nss:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nis:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/rt:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/resolv:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/mathvec:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/support:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nptl /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/support/test-container env GCONV_PATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/iconvdata LOCPATH=/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/localedata LC_ALL=C  /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf/ld-linux-x86-64.so.2 --library-path /home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/math:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/elf:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/dlfcn:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nss:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nis:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/rt:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/resolv:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/mathvec:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/support:/home/j/Dokumente/GitHub/FreetimeOS/lfs/build-glibc/nptl ${1+"$@"}
    ;;
  *)
    usage
    ;;
esac
