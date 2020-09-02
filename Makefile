PWD := $(shell pwd)
SHELL := /bin/sh
CONFIG ?= conf/config.sh
CONFIG_HEADER ?= conf/config.h
RM = rm -rf

.PHONY : clean config

config:
	@ $(SHELL) $(CONFIG) $@
clean:
	@ $(RM) $(CONFIG_HEADER)

KMOD= empty
SRCS= empty.c
.include<bsd.kmod.mk>
