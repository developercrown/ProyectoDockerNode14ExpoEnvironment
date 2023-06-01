#!/bin/bash
echo "Iniciando entorno de desarrollo"
docker run -it -v $(pwd)/my-app:/app -w /app/node-expo npm start