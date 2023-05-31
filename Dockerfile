FROM node:20.2.0

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
RUN npm install express
RUN npm install mongodb

COPY . .
COPY create-user.html .


EXPOSE 3000

CMD [ "node", "server.js" ]

