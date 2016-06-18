FROM python:2
RUN apt-get update && apt-get install -y unzip
RUN pip install twisted

ARG ETH_PROXY_VER=0.0.5
ENV ETH_PROXY_VER ${ETH_PROXY_VER}
WORKDIR /tmp
RUN echo "Download eth-proxy version $ETH_PROXY_VER"
RUN curl -L -o eth-proxy.zip https://github.com/Atrides/eth-proxy/archive/$ETH_PROXY_VER.zip

RUN unzip eth-proxy.zip && rm eth-proxy.zip
ENV TARGET_DIR /tmp/eth-proxy-$ETH_PROXY_VER
WORKDIR $TARGET_DIR

COPY entrypoint.sh $TARGET_DIR
COPY eth-proxy.conf $TARGET_DIR

EXPOSE 8080
CMD $TARGET_DIR/entrypoint.sh
