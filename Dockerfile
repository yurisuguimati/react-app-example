FROM node:19-alpine

WORKDIR /app
COPY package.json ./
RUN npm install --frozen-lockfile
COPY . .
EXPOSE 3000

CMD ["npm", "start"]
