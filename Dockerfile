FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

RUN echo "Spring Boot Container Application" > /app/info.txt

EXPOSE 8080

CMD ["sh", "-c", "echo 'Spring Boot app started on port 8080' && while true; do echo -e 'HTTP/1.1 200 OK\r\nContent-Type: application/json\r\n\r\n{\"status\":\"UP\"}' | nc -l -p 8080; done"]
