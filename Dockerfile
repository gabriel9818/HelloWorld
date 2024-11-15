# Imagen base de OpenJDK 17 (puedes ajustar la versión si es necesario)
FROM openjdk:17-jdk-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR generado al contenedor
COPY target/HelloWorld-0.0.1-SNAPSHOT.jar app.jar

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]

# Exponer el puerto en el que corre la aplicación
EXPOSE 8080


