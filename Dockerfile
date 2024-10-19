FROM node:14
WORKDIR /apps
ADD . .
RUN npm install
CMD ["node","index.js"]
