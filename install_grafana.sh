#!/bin/bash

yum install -y grafana

systemctl daemon-reload
systemctl start grafana-server
systemctl enable grafana-server