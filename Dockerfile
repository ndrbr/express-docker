FROM node:18-alpine

USER node
RUN mkdir -p /home/node/app

WORKDIR '/home/node/app'

COPY --chown=node:node ./package.json ./
RUN npm install --omit=dev

COPY --chown=node:node ./ ./

CMD ["npm", "start"]
EXPOSE 3000
