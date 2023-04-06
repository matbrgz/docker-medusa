FROM node:18.15.0

EXPOSE 8000

WORKDIR /app/storefront

COPY package*.json ./

RUN rm -rf node_modules

RUN apt-get update

RUN npm install -g npm@latest

RUN npm install -g next-cli

COPY . .

COPY develop.sh .

ENTRYPOINT ["./develop.sh", "develop"]