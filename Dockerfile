FROM node:16.13.1-alpine AS build

WORKDIR /usr/src/app

COPY package.json package-lock.json webpack.config.js ./

RUN npm ci

COPY . .

RUN npm run build

FROM node:16.13.1-alpine AS runtime

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/dist ./dist

EXPOSE 3001

CMD ["node", "dist/app.js"]