build:
	docker build --rm -t sdelrio/git-daemon .

run:
	docker run --rm --name git-daemon -p 9418:9418 -v ${PWD}/git:/git sdelrio/git-daemon
	
kill:
	-docker kill git-daemon
	-docker rm git-daemon

