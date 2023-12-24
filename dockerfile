FROM node:20.9.0

LABEL name="aa-wallet"
ENV APP_DIR=/app

WORKDIR APP_DIR

ADD package*.json ./
ADD . .

RUN yarn

CMD ["yarn", "preprocess"]

CMD ["yarn", "run", "bundler", "--unsafe"]

EXPOSE 3000