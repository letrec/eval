SOURCES = src/syntax.ml src/parser.mly src/lexer.mll src/main.ml

RESULT = bin/eval

ANNOTATE = yes

# make target (see manual) : byte-code, debug-code, native-code, ...
all: debug-code

include OCamlMakefile
