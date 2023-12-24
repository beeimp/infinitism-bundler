FROM node:20.9.0

LABEL name="aa-wallet"
ENV APP_DIR=/app

WORKDIR APP_DIR

ADD package*.json ./
ADD . .

# yarn 설치
RUN npm install -g yarn

RUN yarn

CMD ["yarn", "preprocess"]

CMD ["yarn", "run", "bundler", "--unsafe"]

EXPOSE 3000