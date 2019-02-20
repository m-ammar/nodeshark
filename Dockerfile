FROM node:10-alpine

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app && chmod -R 700 /home/node/app

WORKDIR /home/node/app

RUN apk add git

RUN git clone https://github.com/shadjachaudhari13/nodeshark.git

WORKDIR nodeshark

RUN npm install

USER node

ENV PORT 8080

EXPOSE 8080

CMD [ "node", "app.js" ]