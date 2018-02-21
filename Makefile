.phony: build view preview debug kill

build:
	@hugo --destination site/release

view:
	@hugo serve --quiet --watch

preview:
	@hugo serve --quiet --buildFuture --watch

debug:
	@hugo serve --debug --verbose --logFile .debug_log --buildDrafts --buildExpired --buildFuture --watch

kill:
	@pkill hugo
