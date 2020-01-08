FROM node:dubnium
ENV API_PORT=3000 API_HOST=localhost API_PROTOCOL=http
WORKDIR /app
COPY package*.json ./
COPY angular.json ./
COPY . .
RUN yarn install && yarn build
EXPOSE 4200
CMD ["yarn", "start"]