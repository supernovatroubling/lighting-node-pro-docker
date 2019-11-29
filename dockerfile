FROM node:7
WORKDIR /app
COPY package.json /app
RUN apt-get update && apt-get install -y libudev-dev
RUN npm install
COPY . /app
CMD node index.js --fan-count=${fans:-3} --animation ${animation} --colors ${colors:-red} -r ${framerate:-10}