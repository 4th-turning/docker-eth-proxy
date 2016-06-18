FROM python:2
RUN apt-get update && apt-get install -y unzip
RUN pip install twisted

ARG ETH_PROXY_VER=0.0.5
ENV ETH_PROXY_VER ${ETH_PROXY_VER}
WORKDIR /tmp
RUN echo "Download eth-proxy version $ETH_PROXY_VER"
RUN curl -L -o eth-proxy.zip https://github.com/Atrides/eth-proxy/archive/$ETH_PROXY_VER.zip

RUN unzip eth-proxy.zip
WORKDIR /tmp/eth-proxy/

COPY entrypoint.sh /tmp/eth-proxy/
COPY eth-proxy.conf /tmp/eth-proxy/

EXPOSE 8080
CMD /tmp/eth-proxy/entrypoint.sh
