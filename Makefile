HUGO_SERVE_FLAGS = --watch --disableFastRender --forceSyncStatic

.PHONY: help ## Print this help
help:
	@echo Options
	@grep -E '^\.PHONY: [a-zA-Z_-]+ .*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = "(: |##)"}; {printf "\033[36m%-10s\033[0m %s\n", $$2, $$3}'

.PHONY: build ## Build static site locally
build:
	@hugo --destination site/release

.PHONY: view ## Serve static site locally
view:
	@hugo serve ${HUGO_SERVE_FLAGS} --quiet

.PHONY: preview ## Serve static site locally with drafts and future posts
preview:
	@hugo serve ${HUGO_SERVE_FLAGS} --quiet --buildDrafts --buildFuture

.PHONY: debug ## Serve static site locally with all posts and debug logging enabled
debug:
	@hugo serve ${HUGO_SERVE_FLAGS} --debug --verbose --logFile .debug_log --buildDrafts --buildExpired --buildFuture
