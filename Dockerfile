
cker file FROM ubuntu





WORKDIR /app





RUN apt update -y





RUN apt install maven -y





COPY . .





CMD ls



RUN mvn clean package
