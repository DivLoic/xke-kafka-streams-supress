#doitlive speed: 1
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜
#doitlive alias: theend="/Users/loicmdivad/.iterm2/imgcat ../.images/final-gif.gif"
#doitlive alias: whatnext="/Users/loicmdivad/.iterm2/imgcat ../.images/howtodeploy.png"

cd window-final-result
# #Volume creation
mkdir -p configuration

vi configuration/prod.properties

whatnext

gradle jibDockerBuild --image=io.confluent.developer/kstreams-window-final-result:0.0.1-SNAPSHOT

# #DEPLOY THE ALL THING !! 🚀🚀🚀
docker images | grep window-final-result
#
#
#
# #Run the container with a new config file from a volume
#
# #docker run -v $PWD/configuration/prod.properties:/config.properties\
##   io.confluent.developer/kstreams-window-final-result:0.0.1-SNAPSHOT\
#    -Dconfig.file=/config.properties
#
#
# #Run the container only by replacing a few environement variables
docker run --net=host -e "APP_ID=XKE2020" -e "GRACE_PERIOD=0"  io.confluent.developer/kstreams-window-final-result:0.0.1-SNAPSHOT

theend
# # __       __                                __
# # |  \     /  \                              |  \
# # | $$\   /  $$  ______    ______    _______  \$$
# # | $$$\ /  $$$ /      \  /      \  /       \|  \
# # | $$$$\  $$$$|  $$$$$$\|  $$$$$$\|  $$$$$$$| $$
# # | $$\$$ $$ $$| $$    $$| $$   \$$| $$      | $$
# # | $$ \$$$| $$| $$$$$$$$| $$      | $$_____ | $$
# # | $$  \$ | $$ \$$     \| $$       \$$     \| $$
# #  \$$      \$$  \$$$$$$$ \$$        \$$$$$$$ \$$ (Thank you!)
