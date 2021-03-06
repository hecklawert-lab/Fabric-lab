# Basic Hyperledger Fabric Network

<p align="center">
  <img
      alt="Hyperledger Fabric"
      src="https://www.hyperledger.org/wp-content/uploads/2016/09/logo_hl_new.png"
      width="800"
  />
</p>

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

### CLI
```
$ docker-compose up -d cli
```

## Shutdown the network
Just run the following script
```
$ ./shutdown-network
```
