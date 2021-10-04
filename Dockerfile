FROM node:14.17.6-alpine
ENV  MONGO_DB_USERNAME=admin \
     MONGO_DB_PWD=password
WORKDIR /usr/src/app
COPY ./package*.json  ./
RUN npm  install
COPY . .
EXPOSE 3000
CMD ["node", "app.js" ]

