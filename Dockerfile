FROM node:14.18.1
WORKDIR /app

COPY package*.json /app
RUN npm install --registry=https://registry.npm.taobao.org

COPY . /app

RUN npm run tsc

EXPOSE 7001

CMD npm run start