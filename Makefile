.POSIX:

SHELL:=/bin/bash
DATEOF:=$(shell date +%FT%T)
SPACE:=$(subst ,, )
COMMA:=,

help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

entry: ## Create new entry with TITLE= & CATEGORY=(the/category)
	$(eval POST_PATH:=content/posts/$(CATEGORY)/$(subst $(SPACE),-,$(TITLE)))
	$(shell mkdir -p $(POST_PATH))
	@printf '%b\n' "---\ntitle: $(TITLE) \ndate: $(DATEOF) \ncategories: [\"$(subst /,\"$(COMMA)\",$(CATEGORY))\"] \ntags: \n---\n\n" > $(POST_PATH)/index.md

dev: ## Run the local development server
	hugo server -D --disableFastRender --environment development
