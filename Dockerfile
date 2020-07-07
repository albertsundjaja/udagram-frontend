FROM node:13

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm install -g @ionic/cli
RUN ionic build


EXPOSE 8100

CMD ["ionic", "serve", "--host", "0.0.0.0", "--disableHostCheck", "true"]