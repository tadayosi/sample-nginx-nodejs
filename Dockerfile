FROM node:16

WORKDIR /app

COPY . .

RUN NODE_ENV=production yarn install

EXPOSE 3000

CMD ["node", "dist/index.js"]
