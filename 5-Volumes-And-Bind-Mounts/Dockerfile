FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# Add ARG after npm install to avoid re-running npm install
ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# Either set a anonymouse volumne while running container
# OR add anonymous volume during image building
# VOLUME [ "/app/node_modules" ]

CMD ["npm", "start"]