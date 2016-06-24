#!/bin/bash
set -e

if [ -z ${WALLET+x} ]; then echo "Please specify WALLET " && exit; else sed -i 's/.*WALLET[[:space:]]\{0,\}=.*/WALLET=\"'"$WALLET"'\"/' eth-proxy.conf; fi
if [ -z ${POOL_HOST+x} ]; then echo "Please specify POOL_HOST " && exit; else sed -i 's/.*POOL_HOST[[:space:]]\{0,\}=.*/POOL_HOST=\"'"$POOL_HOST"'\"/' eth-proxy.conf; fi
if [ -z ${POOL_PORT+x} ]; then echo "Please specify POOL_PORT " && exit; else sed -i 's/.*POOL_PORT[[:space:]]\{0,\}=.*/POOL_PORT='"$POOL_PORT"'/' eth-proxy.conf; fi
if [ ${DEBUG+x} ]; then sed -i 's/.*DEBUG[[:space:]]\{0,\}=.*/DEBUG='"$DEBUG"'/' eth-proxy.conf; fi
if [ ${COIN+x} ]; then sed -i 's/.*COIN[[:space:]]\{0,\}=.*/COIN=\"'"$COIN"'\"/' eth-proxy.conf; fi

if [ ${ENABLE_WORKER_ID+x} ]; then sed -i 's/.*ENABLE_WORKER_ID[[:space:]]\{0,\}=.*/ENABLE_WORKER_ID='"$ENABLE_WORKER_ID"'/' eth-proxy.conf; fi

if [ ${MONITORING+x} ]; then sed -i 's/.*MONITORING[[:space:]]\{0,\}=.*/MONITORING='"$MONITORING"'/' eth-proxy.conf; fi
if [ ${MONITORING_EMAIL+x} ]; then sed -i 's/.*MONITORING_EMAIL[[:space:]]\{0,\}=.*/MONITORING_EMAIL=\"'"$MONITORING_EMAIL"'\"/' eth-proxy.conf; fi

if [ ${POOL_FAILOVER_ENABLE+x} ]; then sed -i 's/.*POOL_FAILOVER_ENABLE[[:space:]]\{0,\}=.*/POOL_FAILOVER_ENABLE='"$POOL_FAILOVER_ENABLE"'/' eth-proxy.conf; fi

if [ ${POOL_HOST_FAILOVER1+x} ]; then sed -i 's/.*POOL_HOST_FAILOVER1[[:space:]]\{0,\}=.*/POOL_HOST_FAILOVER1=\"'"$POOL_HOST_FAILOVER1"'\"/' eth-proxy.conf; fi
if [ ${POOL_PORT_FAILOVER1+x} ]; then sed -i 's/.*POOL_PORT_FAILOVER1[[:space:]]\{0,\}=.*/POOL_PORT_FAILOVER1='"$POOL_PORT_FAILOVER1"'/' eth-proxy.conf; fi

if [ ${POOL_HOST_FAILOVER2+x} ]; then sed -i 's/.*POOL_HOST_FAILOVER2[[:space:]]\{0,\}=.*/POOL_HOST_FAILOVER2=\"'"$POOL_HOST_FAILOVER2"'\"/' eth-proxy.conf; fi
if [ ${POOL_PORT_FAILOVER2+x} ]; then sed -i 's/.*POOL_PORT_FAILOVER2[[:space:]]\{0,\}=.*/POOL_PORT_FAILOVER2='"$POOL_PORT_FAILOVER2"'/' eth-proxy.conf; fi

if [ ${POOL_HOST_FAILOVER3+x} ]; then sed -i 's/.*POOL_HOST_FAILOVER3[[:space:]]\{0,\}=.*/POOL_HOST_FAILOVER3=\"'"$POOL_HOST_FAILOVER3"'\"/' eth-proxy.conf; fi
if [ ${POOL_PORT_FAILOVER3+x} ]; then sed -i 's/.*POOL_PORT_FAILOVER3[[:space:]]\{0,\}=.*/POOL_PORT_FAILOVER3='"$POOL_PORT_FAILOVER3"'/' eth-proxy.conf; fi

python ./eth-proxy.py
