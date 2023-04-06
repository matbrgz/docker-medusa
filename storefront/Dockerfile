FROM node:latest

WORKDIR /app/storefront

COPY package.json .

RUN rm -rf node_modules

RUN apt-get update

RUN npm install -g npm@latest

RUN npm install -g next-cli

RUN npm install sharp

RUN npm install

COPY . .

COPY run.sh .

ENTRYPOINT ["./run.sh", "dev"]