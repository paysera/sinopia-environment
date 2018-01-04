# sinopia-environment
### Initial setup
##### Download config.yml
```bash
curl -L https://github.com/verdaccio/verdaccio/blob/master/conf/docker.yaml -o data/config.yaml
```
##### Create service
```bash
docker-compose create
```

### Control
##### Start/restart environment
```bash
./scripts/launch.sh
```
