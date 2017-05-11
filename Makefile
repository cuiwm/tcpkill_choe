.PHONY: clean
LDFLAGS = -lpcap -lnet -Wl,-rpath -Wl,'/usr/local/lib'
CFLAGS = -Wall

tcpkill: pcaputil.o tcpkill.c
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ $^

clean:
	rm -f pcaputil.o tcpkill
