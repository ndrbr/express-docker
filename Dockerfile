FROM node:18-alpine

USER node
RUN mkdir -p /home/node/app

WORKDIR '/home/node/app'

COPY --chown=node:node ./package.json ./package-lock.json ./
RUN npm ci --production

COPY --chown=node:node ./ ./

CMD ["npm", "start"]
