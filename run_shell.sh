#!/bin/bash

docker run --net host --rm -i -t -v /root:/root -v /tmp:/tmp -w /root python-base