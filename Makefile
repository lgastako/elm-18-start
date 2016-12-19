ELM_IN=src/Main.elm
ELM_SRCS=$(shell find src -name '*.elm')
ELM_OUT=elm.js

JS_IN=app.js
JS_OUT=app.bundle.js
JS_SRCS=$(JS_IN)
JS_OUT_MIN=app.bundle.min.js

ELM=elm
WEBPACK=webpack

NUKE=rm -rf

help:
	@cat Makefile

build: $(ELM_OUT) $(JS_OUT)

build-prod: $(ELM_OUT) $(JS_OUT_MIN)

clean:
	$(NUKE) elm-stuff/build-artifacts $(ELM_OUT) $(JS_OUT)

dist-clean:
	$(NUKE) elm-stuff $(ELM_OUT)

open:
	open index.html

$(ELM_OUT): $(ELM_SRCS)
	$(ELM) make $(ELM_IN) --yes --warn --output=$(ELM_OUT)

$(JS_OUT): $(JS_SRCS)
	$(WEBPACK)

$(JS_OUT_MIN):
	$(WEBPACK) --optimize-minimize --output-file $(JS_OUT_MIN)

watch:
	$(WEBPACK) --watch

b: build
o: open
w: watch
