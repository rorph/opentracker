#!/bin/bash
docker container rm -f $(docker container ls -q -f name=opentracker --format="{{.ID}}")
docker run -d --restart=always -v $(pwd)/opentracker.conf:/etc/opentracker/opentracker.conf --name opentracker -p 9696:9696 -p 9696:9696/udp -p 6969:6969/udp -p 6969:6969 z3n666/opentracker
