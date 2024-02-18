# var
MODULE  = $(notdir $(CURDIR))

# dir
CWD  = $(CURDIR)

# tool
CURL = curl -L -o
CF   = clang-format

# src
C += $(wildcard src/*.c*)
H += $(wildcard inc/*.h*)
D += $(wildcard src/*.d*)
E += $(wildcard      *.ex?) .formatter.exs
E += ${wildcard  lib/*.ex?}
E += ${wildcard test/*.ex?}

all: $(E)
	mix test

format: tmp/format_exs
tmp/format_exs: $(E)
	mix format && touch $@

doc:

install: doc
	$(MAKE) update
	mix local.hex --force
update:
	sudo apt update
	sudo apt install -uy `cat apt.txt`
