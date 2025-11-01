# Usar la imagen base de Nginx
FROM nginx:latest

# Copiar el archivo HTML al contenedor
COPY index.html /usr/share/nginx/html
