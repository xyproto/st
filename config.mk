# st version
VERSION = 0.6

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/include/X11
X11LIB = /usr/lib/X11

# includes and libs
INCS = -I. -I/usr/include -I${X11INC} \
       `pkg-config --cflags fontconfig` \
       `pkg-config --cflags freetype2`
LIBS = -L/usr/lib -lc -L${X11LIB} -lm -lrt -lX11 -lutil -lXft -lXrender \
       `pkg-config --libs fontconfig`  \
       `pkg-config --libs freetype2`

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_XOPEN_SOURCE=600
CFLAGS += -std=c11 -pedantic -Wall -Wvariadic-macros -Wno-unused-function -O3 ${INCS} ${CPPFLAGS}
LDFLAGS += ${LIBS}

# compiler and linker
# CC = cc

