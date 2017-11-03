#include<stdio.h>

#include "libgofun.h"
#include "librustfun.h"
#include "libasmfun.h"
#include "libcppfun.h"

void CHello(const char *name) {
  printf("Hello \"%s\" from C!\n", name);
}

int main() {
    CHello("Foo");
    GoHello("Bar");
    RustHello("Baz");
    ASMHello("Zoiks");
    CPPHello("Blargh");
    return 0;
}
