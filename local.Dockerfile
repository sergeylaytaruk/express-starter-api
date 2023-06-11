FROM node:18.16-slim

WORKDIR /src

COPY . .
RUN npm i -g nodemon
RUN npm i -g typescript
RUN npm i

RUN apt-get update \
    && apt-get -y --no-install-recommends install nano \
    && apt-get clean;

EXPOSE 4040 5000
#ENTRYPOINT ["node", "server.js", "npm", "run", "dev:watch"]
ENTRYPOINT ["npm", "run", "dev"]
