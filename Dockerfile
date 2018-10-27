FROM ubuntu

MAINTAINER mister4yk

COPY ./iot.deb /
RUN dpkg -i iot.deb && apt-get update && apt-get install -y libglib2.0-0 openssl libssl-dev  && apt-get clean && rm -rf /var/lib/apt/lists/* && cd /opt/iot-vega-server/sqldrivers && LD_LIBRARY_PATH=/opt/iot-vega-server/ ldd libqsqlmysql.so




