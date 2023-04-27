#Base Image
FROM node:20-alpine3.16

#Setting working directory to /app
WORKDIR /app

#Set PATH /app/node_modules/.bin
#ENV PATH /app/node_modules/.bin:$PATH

#Copy package.json
COPY package.json ./

#RUn npm install
RUN npm install

#Copy the app
COPY . ./

EXPOSE 3000

CMD ["node" , "./src/server.js"]