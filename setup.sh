#!/bin/bash
echo "Starting Node Exporter..."
./node_exporter &
echo "Starting Prometheus..."
./prometheus --config.file=config/prometheus.yml --web.listen-address=":9091" &
echo "Starting Grafana..."
sudo systemctl start grafana-server
echo "All services started!"
echo "Grafana: http://localhost:3000"
echo "Prometheus: http://localhost:9091"
