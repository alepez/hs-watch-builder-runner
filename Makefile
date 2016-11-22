default: watch
.PHONY: default

watch:
	@while inotifywait example.hs; do clear; $(MAKE) run; done
.PHONY: watch

run: example
	@echo -e '\033[0;36m'
	@echo
	@./example
	@echo
	@echo -e '\033[0m'
.PHONY: run

example: example.hs
	@ghc -o $@ $<
