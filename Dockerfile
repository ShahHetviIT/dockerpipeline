
FROM node:slim

ENV NODE_ENV development

WORKDIR /epress-docker

COPY package*.json ./

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]
