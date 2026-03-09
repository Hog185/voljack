CC ?= cc
CFLAGS ?= -std=c11 -O3 -DNDEBUG -Wall -Wextra -Wpedantic
CPPFLAGS += $(shell pkg-config --cflags jack)
LDLIBS += $(shell pkg-config --libs jack) -lm

all: voljack

voljack: src/voljack.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -o $@ $< $(LDLIBS)

clean:
	rm -f voljack
