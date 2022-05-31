FROM ubuntu AS builder  
  WORKDIR /app
  RUN apt update -y
  RUN apt install maven -y 
  COPY . .
  RUN mvn clean package 

  FROM tomcat:latest    
  CMD [ "service", "tomcat" ]
  COPY --from = builder ./project/target/hello-world-war.war ./webapps
  EXPOSE 8080
  

/*FROM ubuntu*/
/*WORKDIR /app*/
/*RUN apt update -y*/
/*RUN apt install maven -y*/
/*COPY . .*/
/*RUN mvn clean package*/
