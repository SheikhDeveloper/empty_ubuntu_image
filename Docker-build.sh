#!/usr/bin/env bash

docker build --network=host -t empty_ubuntu22 -f Dockerfile .
