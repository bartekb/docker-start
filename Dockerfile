FROM node:0.10.38
RUN mkdir /app
COPY src/app.js /app
WORKDIR /app
EXPOSE 8080
CMD node app.js