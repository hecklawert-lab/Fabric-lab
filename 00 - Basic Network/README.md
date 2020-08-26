# Basic Hyperledger Fabric Network

## About this network
This is a basic hyperledger fabric network with:
* 1 Org
    * 1 CA
    * 1 Raft
    * 1 Peer
    * 1 CLI

## How to

Steps to deploy the network

### CA
```
$ docker-compose up -d ca
```
Wait until the CA generates all the cryptography

### Generate genesis block

```
$ docker-compose up -d orderer-genesis
```

### Raft
```
$ docker-compose up -d raft1
```

### Peer
```
$ docker-compose up -d peer1-org0
```

## Shutdown the network
Just run the following script
```
$ ./shutdown-network
```
