# Basic Hyperledger Fabric Network

## How to

Steps to deploy the network

#### CA
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
