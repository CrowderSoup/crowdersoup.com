SHELL := /bin/bash
.POSIX:

DATEOF:=$(shell date +%FT%T)

help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

entry: ## Launch $EDITOR with a new entry with TITLE=
	@if ! [ -d "./content/" ]; then mkdir content/; fi
	@if ! [ -d "./content/posts/" ]; then mkdir content/posts/; fi
	@printf '%b\n' "---\ntitle: $(TITLE) \ndate: $(DATEOF) \ncategories: [\"note\"] \ntags: \n---\n\n" > content/posts/$(DATEOF)-$(shell printf "%q" "$(TITLE)").md
	$(EDITOR) ./content/posts/$(DATEOF)-$(shell printf "%q" "$(TITLE)").md

ship: ## One-shot git add all changes, commit and push your updates
	git add .
	git commit -m "📤 Update files"
	git push

dev: ## Run the local development server
	hugo serve --enableGitInfo --disableFastRender --environment development
