# EthExplorer (In Progress)

![EthExplorer Screenshot](http://i.imgur.com/NHFYq0x.png)

## License

GPL (see LICENSE)

## Installation

run:
```bash
docker build -t etherparty .
docker run etherparty
```

env:
* -e RPC=${RPC} - set custom RPC URL (default: https://main-rpc.linkpool.io/)
* -e SUBDIR=${SUBDIR} - set custom sub directory (default: none)