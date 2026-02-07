FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY start.sh .
RUN chmod +x start.sh

EXPOSE 25565

CMD ["./start.sh"]
