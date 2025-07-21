# Usando uma imagem do JDK 17 como base
FROM eclipse-temurin:17-jdk

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo JAR para dentro do container
COPY target/order-system-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta que sua aplicação usa
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["java", "-jar", "app.jar"]
