#!/bin/bash

docker run --rm -ti -v $(pwd):/opt --workdir=/opt yanan/brcmsdk:v1.0
