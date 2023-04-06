FROM node:18.15.0

ENV NODE_ENV=development

EXPOSE 9000

WORKDIR /app/medusa

COPY package*.json ./

RUN rm -rf node_modules

RUN apt-get update

RUN apt-get install -y python

RUN npm install -g npm@latest

RUN npm install -g @medusajs/medusa-cli@latest

RUN npm install

COPY . .

COPY develop.sh .

ENTRYPOINT ["./develop.sh", "develop"]
