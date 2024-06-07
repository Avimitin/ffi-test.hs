all: prepare build/lib/factorial.o src/Factorial.hs src/Main.hs
	ghc -o build/factorial src/Main.hs src/Factorial.hs build/lib/factorial.o

.PHONY: prepare
prepare:
	mkdir -p build build/lib

build/lib/factorial.o:
	gcc -o build/lib/factorial.o -I include -c lib/factorial.c

.PHONY: lsp-setup
lsp-setup: prepare compile_commands.json.template
	sed "s|@project_dir@|$(PWD)|g" compile_commands.json.template > build/compile_commands.json
