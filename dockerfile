FROM node:14-slim


WORKDIR /api

COPY ./package.json ./
COPY ./package-lock.json ./

RUN npm install
RUN npm build

COPY . .

EXPOSE 3001

CMD ["node","dist/main.js" ]