FROM --platform=linux/amd64 node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret
# On AWS ECS this would be localhost but on Docker Compose it's the name of the service
# As on ECS we have a single container, we can use localhost
ENV MONGODB_URL=mongodb
ENV MONGODB_NAME=goals-dev

CMD ["npm", "start"]