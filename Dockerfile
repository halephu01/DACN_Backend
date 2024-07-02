FROM node:20.14-alpine

COPY .env .env

WORKDIR /src/app

COPY ./package*.json .

RUN npm install

COPY . .

RUN npx tsc

CMD [ "npm", "start"]

EXPOSE 7000

# FROM caddy:2.6.2-alpine

# COPY ./Caddyfile /etc/caddy/Caddyfile

# EXPOSE 3000

# CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]