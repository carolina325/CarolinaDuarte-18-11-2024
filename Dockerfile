# Usar la imagen base de Apache HTTPD
FROM httpd:latest

# Crear carpeta personal en la raíz del contenedor y asignar permisos
RUN mkdir /CarolinaDuarte-2772878 && chmod 777 /CarolinaDuarte-2772878

# Copiar una imagen desde la carpeta recursos del host al contenedor
COPY ./recursos/img5.jpg /CarolinaDuarte-2772878/

# Copiar el archivo main.sh al contenedor y asignar permisos de ejecución
COPY ./main.sh /CarolinaDuarte-2772878/
RUN chmod +x /CarolinaDuarte-2772878/main.sh

# Copiar el archivo index.html al directorio raíz de Apache
COPY ./2/template2/index.html /usr/local/apache2/htdocs/

# Establecer el script main.sh para que se ejecute al iniciar el contenedor
CMD ["/bin/bash", "-c", "/CarolinaDuarte-2772878/main.sh && httpd-foreground"]

