.PHONY: all clean

sources = $(wildcard *.gomacro)

all: $(sources:%.gomacro=%.go)

clean:
	-rm $(sources:%.gomacro=%.go)

%.go: %.gomacro
	@rm $@ 2>/dev/null; true
	gomacro -w $^
