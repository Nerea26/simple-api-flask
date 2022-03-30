FROM ubuntu:latest  
#  desde donde cogeremos la imagen (template), en este caso "ubuntu, última versión"
LABEL project = "nuclio-flask-api"
#  
LABEL version="1.0"
RUN apt update -y
# actualizar la lista de paquetes, algo importantísimo (-y) si, a todo
RUN apt install -y python3-pip
COPY . /app
# hazme una copia de la parte izquierda (mi directorio)(.) a una ruta que se va a llamar app
WORKDIR /app
# definir la app como directorio de trabajo
RUN pip3 install -r requirements.txt
# # instalar todas las librerias que estén en requirements
ENTRYPOINT ["python3"]
# me vas a abrir la consola de comandos y me vas a ejecutar python
CMD ["app.py"]
# y ejecutarás app.py
