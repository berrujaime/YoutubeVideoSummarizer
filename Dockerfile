# Utiliza la imagen oficial de Python como base
FROM python:3.11-slim

# Establece la variable de entorno PYTHONUNBUFFERED en 1 para evitar la
# compilación en búfer de la salida estándar y la redirección de los
# mensajes de error al sistema de archivos.
ENV PYTHONUNBUFFERED 1

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt al directorio de trabajo
COPY requirements.txt /app/

# Instala las dependencias especificadas en requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos de la aplicación al directorio de trabajo
COPY . /app/

# Expone el puerto 8000 para que pueda ser accesible desde fuera del contenedor
EXPOSE 8080

# Comando por defecto para ejecutar el servidor web de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
