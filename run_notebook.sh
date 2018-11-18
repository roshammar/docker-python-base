#!/bin/bash

docker run --net host --rm -i -t --user $(id -u):$(id -g) -v $HOME:$HOME -w $HOME python-base sh -c "jupyter notebook --no-browser"