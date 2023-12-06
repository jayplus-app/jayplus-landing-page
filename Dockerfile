FROM node:lts as dependencies
WORKDIR /jayplus-landing-page
COPY package.json ./
RUN npm install

FROM node:lts as builder
WORKDIR /jayplus-landing-page
COPY . .
COPY --from=dependencies /jayplus-landing-page/node_modules ./node_modules
RUN npm run build

FROM node:lts as runner
WORKDIR /jayplus-landing-page
ENV NODE_ENV production
COPY --from=builder /jayplus-landing-page/.next ./.next
COPY --from=builder /jayplus-landing-page/node_modules ./node_modules
COPY --from=builder /jayplus-landing-page/package.json ./package.json

CMD [ "npm", "start" ]