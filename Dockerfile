FROM node:20-alpine

EXPOSE 3000

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY  . /app

CMD ["yarn", "start"]