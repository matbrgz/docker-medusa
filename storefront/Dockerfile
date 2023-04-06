FROM node:18.15.0

ENV NODE_ENV=development

EXPOSE 8000

WORKDIR /app/storefront

COPY package*.json .

RUN rm -rf node_modules

RUN apt-get update

RUN npm install -g npm@latest

RUN npm install -g next-cli

RUN npm install sharp

RUN npm install

COPY . .

RUN npm run build &> /dev/null

COPY develop.sh .

ENTRYPOINT ["./develop.sh", "develop"]