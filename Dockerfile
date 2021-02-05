FROM node:latest
COPY package.json /package.json
COPY package-lock.json /package-lock.json
RUN mkdir /output
WORKDIR /
RUN npm install
RUN echo "Test start"
RUN npm run compile --verbose
RUN echo "Test end"
WORKDIR /output/css
RUN ls -la
RUN cat /output/css/scss.css