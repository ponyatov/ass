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
E += $(wildcard *.ex?)
E += ${wildcard lib/*.ex?}

all: $(E)
	mix check

format: tmp/format_exs
tmp/format_exs: $(E)
	mix format && touch $@

doc:

install: doc
	$(MAKE) update
update:
	sudo apt update
	sudo apt install -uy `cat apt.txt`
