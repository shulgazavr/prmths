#!/bin/bash

wget https://github.com/prometheus/prometheus/releases/download/v2.42.0/prometheus-2.42.0.linux-amd64.tar.gz
tar xzvf prometheus-*.t*gz

useradd --no-create-home --shell /usr/sbin/nologin prometheus

mkdir {/etc/,/var/lib/}prometheus
cp -vi prometheus-*.linux-amd64/prom{etheus,tool} /usr/local/bin
cp -rvi prometheus-*.linux-amd64/{console{_libraries,s},prometheus.yml} /etc/prometheus/
chown -Rv prometheus: /usr/local/bin/prom{etheus,tool} /etc/prometheus/ /var/lib/prometheus/

cp prometheus.service /etc/systemd/system/prometheus.service
cp prometheus.yml /etc/prometheus/prometheus.yml

systemctl daemon-reload
systemctl start prometheus
systemctl enable prometheus

