FROM node:latest
COPY package.json /package.json
COPY package-lock.json /package-lock.json
RUN mkdir /output
WORKDIR /
RUN npm install
