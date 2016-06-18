FROM python:2
RUN apt-get update && apt-get install -y unzip
RUN pip install twisted

ENV ETH_PROXY_VER 0.0.5
WORKDIR /tmp
RUN curl -O -L https://github.com/Atrides/eth-proxy/releases/download/$ETH_PROXY_VER/eth-proxy.zip
RUN unzip eth-proxy.zip
WORKDIR /tmp/eth-proxy/

COPY entrypoint.sh /tmp/eth-proxy/
COPY eth-proxy.conf /tmp/eth-proxy/

EXPOSE 8080
CMD /tmp/eth-proxy/entrypoint.sh
