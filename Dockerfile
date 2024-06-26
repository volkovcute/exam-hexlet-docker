FROM node:20.15

WORKDIR . /build

COPY package*.json ./

USER root

RUN npm install

COPY --chown=node:node . .

EXPOSE 3001

CMD ["node", "./index.js"]
