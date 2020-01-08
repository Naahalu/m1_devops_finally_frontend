# Filename: Dockerfile 
FROM node:10-alpine
WORKDIR /app
COPY package*.json ./
ENV 
RUN yarn add @nestjs/core@latest && yarn build && yarn install --production && yarn cache clean
COPY . .
EXPOSE 3000
CMD ["yarn", "run", "start"]