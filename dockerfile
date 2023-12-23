FROM node:20.9.0

LABEL name="aa-wallet"
ENV APP_PORT=3000 APP_DIR=/app

WORKDIR APP_DIR

ADD package.json .
ADD package-lock.json .
ADD . .

RUN npm install 

CMD ["npm", "run", "preprocess"]

CMD ["npm", "run", "bundler", "--unsafe"]

EXPOSE APP_PORT