default: fun

libgofun.a:
	go build -buildmode=c-archive -o libgofun.a fun.go

librustfun.a:
	rustc --crate-type=staticlib -o librustfun.a fun.rs

libasmfun.a:
	as -o asmfun.o fun.s
	ar crv libasmfun.a asmfun.o

libcppfun.a:
	g++ -o cppfun.o -c fun.cc
	ar crv libcppfun.a cppfun.o

fun: libgofun.a librustfun.a libasmfun.a libcppfun.a
	gcc -o fun fun.c libgofun.a librustfun.a libasmfun.a libcppfun.a -lSystem -lm -lc -lresolv -lc++
	strip fun

clean:
	rm -f fun *.o *.a libgofun.h

.PHONY: clean
