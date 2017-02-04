
# Very simple git service

## Start container

```
docker run --name git-daemon -d -p 9418:9418 -v $PWD/git:/git sdelrio/git-daemon
```

## Start service

```
docker service create --name git-daemon --mount "type=bind,source=$PWD/git,target/git" sdelrio/git-daemon
```

