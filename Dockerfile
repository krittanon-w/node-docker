FROM node:8.11

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY . /usr/src/app
RUN npm install && npm cache clean --force

# EXPOSE 3000 3443

RUN chmod 777 start-script.sh

CMD ["./start-script.sh"]
