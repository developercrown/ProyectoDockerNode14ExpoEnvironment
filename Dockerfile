# Define la imagen base
FROM node:16.13.0

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo package.json al directorio de trabajo
# COPY package*.json ./

# Instala globalmente Expo CLI
RUN npm install -g expo-cli

# Copia el resto de los archivos al directorio de trabajo
COPY . .

# Expone el puerto 19000 para Expo DevTools
EXPOSE 19000

# Expone el puerto 19001 para la aplicación Expo
EXPOSE 19001

# Expone el puerto 19002 para el paquete de desarrollo Expo
EXPOSE 19002

# Ejecuta el comando "expo start" al iniciar el contenedor
# CMD ["npm", "start"]
