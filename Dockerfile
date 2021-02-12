FROM node:latest
WORKDIR /
RUN mkdir test_env
WORKDIR test_env
COPY package.json /package.json
COPY package-lock.json /package-lock.json
RUN mkdir /output
RUN mkdir /output/css
RUN npm i