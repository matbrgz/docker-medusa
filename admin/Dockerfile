FROM node:18.15.0

ENV NODE_ENV=development

EXPOSE 7000

WORKDIR /app/admin

COPY package*.json ./

RUN rm -rf node_modules

RUN apt-get update

RUN npm install -g npm@latest

RUN npm install

COPY . .

COPY develop.sh .

ENTRYPOINT ["./develop.sh", "develop"]