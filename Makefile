# MachOX Makefile
# Based on ChOma, modified for CoreTrust bypass

CC = clang
CFLAGS = -Wall -O2 -I./include -I./src -I/opt/homebrew/opt/openssl/include
LDFLAGS = -L/opt/homebrew/opt/openssl/lib -lcrypto -lssl -framework CoreFoundation -framework Security

SRC_DIR = src
TESTS_DIR = tests/ct_bypass
INCLUDE_DIR = include

SRCS = $(wildcard $(SRC_DIR)/*.c)
SRCS += $(TESTS_DIR)/main.c

OBJS = $(SRCS:.c=.o)

TARGET = MachOX

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

distclean: clean
	rm -f $(OBJS)

.PHONY: all clean distclean
