FROM node
WORKDIR /app
COPY package*.json .
RUN apt-get update
RUN apt-get install -y
RUN npm install -y
COPY . .
EXPOSE 8081
CMD ["node","server.js"]
