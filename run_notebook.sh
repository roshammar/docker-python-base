#!/bin/bash

docker run $(NET) --rm -i -t $(VOLUMES) $(ENV) $(PORTS) "$(NS)/$(REPO):$(VERSION)" sh -c "jupyter notebook --no-browser"