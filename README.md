docker image for https://github.com/Atrides/eth-proxy

### Config
Below values are defined in config file and can't be overridden, but unlikely they will be ever needed to be changed...
`HOST = "0.0.0.0"`
`PORT = 8080`
`LOG_TO_FILE = False`

Following config values have default values, but can be overridden with the `-e` `docker run` command line option
`COIN=ETH`
`DEBUG=False`

Finally the rest of the configuration has no defaults, but also can be specified in the command line:
`ENABLE_WORKER_ID`
`MONITORING`
`MONITORING_EMAIL`
`POOL_FAILOVER_ENABLE`
`POOL_HOST_FAILOVER1`
`POOL_PORT_FAILOVER1`
`POOL_HOST_FAILOVER2`
`POOL_PORT_FAILOVER2`
`POOL_HOST_FAILOVER3`
`POOL_PORT_FAILOVER3`


### How to run
Specify `WALLET`, `POOL_HOST`, `POOL_PORT` to your docker run command, for example:

`docker run --rm -p 8080:8080 -e WALLET=0x64f15ae505a1ea29509d966761dcc9681a6c0af5 -e POOL_HOST=us-east1.nanopool.org -e POOL_PORT=9999 yuriba/eth-proxy`
