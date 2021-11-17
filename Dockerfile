FROM mhart/alpine-node:12

RUN apk add --no-cache make gcc g++ python bash
# Create app directory
RUN mkdir /app
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /app/

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
# Bundle app source
COPY . /app

ENV NODE_ENV ENV
ENV PORT 3000

VOLUME ./app/data

EXPOSE 3000
CMD [ "npm", "start" ]
