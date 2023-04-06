FROM node:latest

WORKDIR /app/medusa

COPY package.json .

RUN rm -rf node_modules

RUN apt-get update

RUN apt-get install -y python

RUN npm install -g npm@latest

RUN npm install -g @medusajs/medusa-cli@latest

RUN npm install

# RUN medusa migrations run

# RUN medusa develop

COPY . .

COPY develop.sh .

RUN ls

ENTRYPOINT ["./develop.sh", "develop"]
