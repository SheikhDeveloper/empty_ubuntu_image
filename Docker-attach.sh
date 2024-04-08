#!/usr/bin/env bash

docker run -it --rm --privileged --network host -v $(pwd)/../:/home/user/ --name empty_ubuntu22 empty_ubuntu22 /bin/bash
