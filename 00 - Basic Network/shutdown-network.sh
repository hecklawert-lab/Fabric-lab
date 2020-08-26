#!/bin/bash

docker kill ca orderer-genesis raft1 peer1-org0 cli-corp
docker rm ca orderer-genesis raft1 peer1-org0 cli-corp

if [ -d "./org0" ] 
then
     rm -rf ./org0/*
     mkdir -p ./org0/fabric-ca-server/config
     cp ./configtx.yaml ./org0/fabric-ca-server
     cp fabric-ca-server-config.yaml ./org0/fabric-ca-server/config/
else
    echo "Error. Are you running this script in the correct path?"
fi
