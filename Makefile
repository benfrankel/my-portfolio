.phony: build view preview debug kill

deploy: build
	@hugo --destination site/release
	@cd site/release
	@git commit -am "Automated Deploy"
	@git push origin master

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
