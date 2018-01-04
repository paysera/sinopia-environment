# sinopia-environment
### Initial setup
##### Download config.yml
```bash
curl -L https://raw.githubusercontent.com/verdaccio/verdaccio/master/conf/docker.yaml -o data/config.yaml
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
