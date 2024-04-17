FROM node:14.21.0-alpine

RUN yarn global add nodemon
WORKDIR /src
ADD package*.json ./
RUN yarn install
COPY . .

CMD ["node", "index.js"]
