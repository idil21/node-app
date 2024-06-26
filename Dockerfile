FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./ app.js ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
