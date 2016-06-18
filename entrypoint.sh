#!/bin/bash
set -e

if [ -z ${WALLET+x} ]; then echo "Please specify WALLET " && exit; else sed -i 's/.*WALLET.*/WALLET=\"'"$WALLET"'\"/' eth-proxy.conf; fi
if [ -z ${POOL_HOST+x} ]; then echo "Please specify POOL_HOST " && exit; else sed -i 's/.*POOL_HOST.*/POOL_HOST=\"'"$POOL_HOST"'\"/' eth-proxy.conf; fi
if [ -z ${POOL_PORT+x} ]; then echo "Please specify POOL_PORT " && exit; else sed -i 's/.*POOL_PORT.*/POOL_PORT='"$POOL_PORT"'/' eth-proxy.conf; fi
if [ ${DEBUG+x} ]; then sed -i 's/.*DEBUG.*/DEBUG='"$DEBUG"'/' eth-proxy.conf; fi
if [ ${COIN+x} ]; then sed -i 's/.*COIN.*/COIN=\"'"$COIN"'\"/' eth-proxy.conf; fi

if [ ${ENABLE_WORKER_ID+x} ]; then sed -i 's/.*ENABLE_WORKER_ID.*/ENABLE_WORKER_ID='"$ENABLE_WORKER_ID"'/' eth-proxy.conf; fi

if [ ${MONITORING+x} ]; then sed -i 's/.*MONITORING.*/MONITORING='"$MONITORING"'/' eth-proxy.conf; fi
if [ ${MONITORING_EMAIL+x} ]; then sed -i 's/.*MONITORING_EMAIL.*/MONITORING_EMAIL=\"'"$MONITORING_EMAIL"'\"/' eth-proxy.conf; fi

if [ ${POOL_FAILOVER_ENABLE+x} ]; then sed -i 's/.*POOL_FAILOVER_ENABLE.*/POOL_FAILOVER_ENABLE='"$POOL_FAILOVER_ENABLE"'/' eth-proxy.conf; fi

if [ ${POOL_HOST_FAILOVER1+x} ]; then sed -i 's/.*POOL_HOST_FAILOVER1.*/POOL_HOST_FAILOVER1=\"'"$POOL_HOST_FAILOVER1"'\"/' eth-proxy.conf; fi
if [ ${POOL_PORT_FAILOVER1+x} ]; then sed -i 's/.*POOL_PORT_FAILOVER1.*/POOL_PORT_FAILOVER1='"$POOL_PORT_FAILOVER1"'/' eth-proxy.conf; fi

if [ ${POOL_HOST_FAILOVER2+x} ]; then sed -i 's/.*POOL_HOST_FAILOVER2.*/POOL_HOST_FAILOVER2=\"'"$POOL_HOST_FAILOVER2"'\"/' eth-proxy.conf; fi
if [ ${POOL_PORT_FAILOVER2+x} ]; then sed -i 's/.*POOL_PORT_FAILOVER2.*/POOL_PORT_FAILOVER2='"$POOL_PORT_FAILOVER2"'/' eth-proxy.conf; fi

if [ ${POOL_HOST_FAILOVER3+x} ]; then sed -i 's/.*POOL_HOST_FAILOVER3.*/POOL_HOST_FAILOVER3=\"'"$POOL_HOST_FAILOVER3"'\"/' eth-proxy.conf; fi
if [ ${POOL_PORT_FAILOVER3+x} ]; then sed -i 's/.*POOL_PORT_FAILOVER3.*/POOL_PORT_FAILOVER3='"$POOL_PORT_FAILOVER3"'/' eth-proxy.conf; fi

python ./eth-proxy.py
