# Imagen base
FROM node:20-alpine

# Carpeta de trabajo
WORKDIR /app

# Copiar package.json e instalar dependencias
COPY package*.json ./
RUN npm install --production

# Copiar el resto del código
COPY . .

# Exponer puerto 80
EXPOSE 80

# Comando de inicio
CMD ["npm", "start"]
