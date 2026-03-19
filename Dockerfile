FROM node:20
WORKDIR /apps
ADD . .
RUN npm install
CMD ["node", "index.js"]
