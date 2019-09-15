FROM centos:7.6.1810

RUN yum install -y centos-release-scl centos-release-scl-rh \
 && yum install -y llvm-toolset-7-clang make apr-devel cairo-devel expat fontconfig-devel fribidi-devel gd-devel gmp-devel graphite2-devel harfbuzz-devel hunspell-devel icu libjpeg-devel log4cxx-devel lzma mpfr-devel libmspack-devel openssl-devel pixman-devel libpng-devel poppler-devel popt-devel uriparser-devel zziplib-devel flex-devel flex apr-util-devel bzip2-devel curl-devel xz-devel libxslt bison-devel bison rpm-build \
 && yum clean all \
 && curl -L -o /tmp/cmake.sh https://github.com/Kitware/CMake/releases/download/v3.15.3/cmake-3.15.3-Linux-x86_64.sh \
 && chmod u+x /tmp/cmake.sh \
 && /tmp/cmake.sh --skip-license --prefix=/usr/local --exclude-subdir \
 && curl -L -o /tmp/miktex.tar.xz https://miktex.org/download/ctan/systems/win32/miktex/source/miktex-2.9.7140.tar.xz \
 && cd /tmp \
 && unxz miktex.tar.xz \
 && tar xf miktex.tar \
 && mkdir miktex-2.9.7140/build \
 && cd /tmp/miktex-2.9.7140/build \
 && source scl_source enable llvm-toolset-7 \
 && cmake  -DHAVE_GMTIME_R=1 -DHAVE_LOCALTIME_R=1 -DHAVE_TIMEGM=1 -DWITH_UI_QT=OFF -DWITH_HARFTEX=0 -DCMAKE_BUILD_TYPE=Release -DMIKTEX_LINUX_DIST=centos -DMIKTEX_LINUX_DIST_VERSION=7 -DCMAKE_INSTALL_PREFIX=/usr/local .. \
 && make -j \
 && cd /tmp/miktex-2.9.7140/build \
 && cpack \
 && cp miktex-2.9.7140-1.x86_64.rpm /
