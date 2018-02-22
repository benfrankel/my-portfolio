.phony: build view preview debug kill

deploy: build
	@git -C site/release add -A
	@git -C site/release commit -m "Automated Deploy"
	@git -C site/release push origin master

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
