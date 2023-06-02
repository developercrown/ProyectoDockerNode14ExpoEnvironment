#!/bin/bash

# Obtén el directorio actual
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


echo "Running"

# Crea la instrucción base de docker run
docker_run_cmd="docker run --rm --network=internal --ip 192.168.100.10 -v '$current_dir/../src:/app' -w '/app' -it --rm -p 19000:19000 -p 19001:19001 -p 19002:19002 --name expo-app expo-node npm"

# Agrega los comandos adicionales enviados como parámetro
docker_run_cmd+=" $@"

# Ejecuta la instrucción completa
eval $docker_run_cmd