FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ENV PORT 80

EXPOSE $PORT

# Either set a anonymouse volumne while running container
# OR add anonymous volume during image building
# VOLUME [ "/app/node_modules" ]

CMD ["npm", "start"]