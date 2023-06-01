#!/bin/bash
echo "creando proyecto"
docker run -it -v $(pwd)/src:/app -w /src node-expo expo init proyecto