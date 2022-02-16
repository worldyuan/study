```
git clone -b v3.0.0 https://github.com/vesoft-inc/nebula-docker-compose.git
cd nebula-docker-compose/
docker-compose up -d
docker run --rm -ti --network nebula-docker-compose_nebula-net --entrypoint=/bin/sh vesoft/nebula-console:v2.6.0
nebula-console -u root -p Nebula@123 --address=graphd --port=9669

```