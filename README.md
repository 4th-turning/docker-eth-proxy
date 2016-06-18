docker image for https://github.com/Atrides/eth-proxy

### How to run
As a minimum, specify `WALLET`, `POOL_HOST`, `POOL_PORT` to your docker run command, for example:

```
docker run --rm -p 8080:8080 \
-e WALLET=0x64f15ae505a1ea29509d966761dcc9681a6c0af5 \
-e POOL_HOST=us-east1.nanopool.org \
-e POOL_PORT=9999 yuriba/eth-proxy
```
Once launched, you can start your miner, in case of ethminer:
```
ethminer -G -F http://127.0.0.1:8080/YOUR_WORKER_NAME
```

### Configuration
Below values are defined in config file and can't be overridden, but unlikely they will be ever needed to be changed while in docker:
```
HOST = "0.0.0.0"
PORT = 8080
LOG_TO_FILE = False
```

Following config values have default values, but can be overridden with the `-e` `docker run` command line option:
```
COIN=ETH
DEBUG=False
ENABLE_WORKER_ID=True
```

Finally the rest of the configuration has no defaults, but also can be specified in the command line, please read the comments for the meaning/values from the [docker-eth-proxy/eth-proxy.conf](https://github.com/yuriba/docker-eth-proxy/blob/master/eth-proxy.conf):
```
MONITORING
MONITORING_EMAIL
POOL_FAILOVER_ENABLE
POOL_HOST_FAILOVER1
POOL_PORT_FAILOVER1
POOL_HOST_FAILOVER2
POOL_PORT_FAILOVER2
POOL_HOST_FAILOVER3
POOL_PORT_FAILOVER3
```

### Version
Current version of eth-proxy used in this docker is `0.0.5`, but can be changed at build time with command:
```
docker build --build-arg ETH_PROXY_VER=0.0.4 .
```
