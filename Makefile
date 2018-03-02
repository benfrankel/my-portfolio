.PHONY: help ## Print this help
help:
	@echo Options
	@grep -E '^\.PHONY: [a-zA-Z_-]+ .*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = "(: |##)"}; {printf "\033[36m%-10s\033[0m %s\n", $$2, $$3}'

.PHONY: deploy ## Build static site and publish
deploy: build
	@git -C site/release add -A
	@git -C site/release commit -m "Automated Deploy"
	@git -C site/release push origin master

.PHONY: build ## Build static site locally
build:
	@hugo --destination site/release

.PHONY: view ## Serve static site locally
view:
	@hugo serve --quiet --watch

.PHONY: preview ## Serve static site locally with drafts and future posts
preview:
	@hugo serve --quiet --buildDrafts --buildFuture --watch

.PHONY: debug ## Serve static site locally with all posts and debug logging enabled
debug:
	@hugo serve --debug --verbose --logFile .debug_log --buildDrafts --buildExpired --buildFuture --watch
