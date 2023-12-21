FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ENV MONGO_DB_HOST=mongodb MONGO_DB_PORT=27017
ENV MONGO_DB_USERNAME=root MONGO_DB_PASSWORD=secret
ENV PORT 80

EXPOSE $PORT

CMD ["npm", "start"]