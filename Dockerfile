FROM node:6-alpine
ENV NODE_ENV production
ARG port=3000
ENV PORT $port

WORKDIR /usr/src/app
COPY "package.json"  .
RUN npm install -g bunyan --silent
RUN npm install --production --silent 
COPY . .
EXPOSE $port
CMD npm start