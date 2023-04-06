FROM node:18.15.0

EXPOSE 7000

WORKDIR /app/admin

COPY package*.json ./

RUN rm -rf node_modules

RUN apt-get update

RUN npm install -g npm@latest

COPY . .

COPY develop.sh .

ENTRYPOINT ["./develop.sh", "develop"]