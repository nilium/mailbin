.PHONY: all dryrun install

all:
	@echo "Targets:"
	@echo "* dryrun  - Simulate an install."
	@echo "* install - Install the mail package to $(HOME) (HOME)."

dryrun:
	stow --no --verbose --dir . --target "$(HOME)" --stow mail

install:
	stow --verbose --dir . --target "$(HOME)" --stow mail
