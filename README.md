# ezVis as a docker container #

## Prerequisite ##
- Docker >=1.9
- Docker-compose

## Setup ##
Build the docker image :

```bash
  git clone https://github.com/ezpaarse-project/docker-ezvis.git
  cd docker-ezvis
  docker build --build-arg http_proxy --build-arg https_proxy -t ezvis src
```

## Usage ##
Put your data (json + repository) in `./data/repository` and use the provided `docker-compose.yml` :

```
docker-compose up -d
```

Then visit http://localhost:3000/  
Example data are available in the [ezVis showcase](https://github.com/madec-project/showcase)
