#doitlive speed: 1
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜

cd window-final-result
# volume creation
mkdir configuration

vi configuration/prod.properties

gradle jibDockerBuild --image=io.confluent.developer/kstreams-window-final-result:0.0.1-SNAPSHOT

## DEPLOY THE ALL THING !! 🚀🚀🚀
docker image | grep window-final-result

## Run the container with a new config file from a volume
## docker run -v $PWD/configuration/prod.properties:/config.properties\
##   io.confluent.developer/kstreams-window-final-result:0.0.1-SNAPSHOT -Dconfig.file=/config.properties

## Run the container only by replacing a few environement variables
docker run\
 -e "APP_ID=XKE2020"\
 -e "GRACE_PERIOD=0"\
 -e "BOOTSTRAP_SERVERS=broker:9092"\
 -e "SCHEMA_REGISTRY_URL=http://schema-registry:8081"\
 io.confluent.developer/kstreams-window-final-result:0.0.1-SNAPSHOT

docker ps
