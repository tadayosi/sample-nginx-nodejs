FROM node:20-alpine

WORKDIR /app

COPY package.json .
COPY yarn.lock .
COPY .yarnrc.yml .
COPY .yarn/ .yarn/
COPY dist/index.js dist/

# Install express
RUN NODE_ENV=production yarn install

EXPOSE 3000

CMD ["node", "dist/index.js"]
