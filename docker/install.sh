if test ! $(which docker)
then
    echo "  Docker not found."

    exit -1
fi  

if [[ ! -f "$HOME/.docker/cli-plugins" ]]; then
    mkdir -p $HOME/.docker/cli-plugins
    ln -sfn $(brew --prefix)/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose
fi