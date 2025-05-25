FROM node:16.13.1-alpine AS build

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm ci --omit=dev

COPY . .

FROM node:16.13.1-alpine AS runtime

WORKDIR /usr/src/app

COPY --from=build /usr/src/app ./

EXPOSE 3001

CMD ["node", "app.js"]