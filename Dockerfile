FROM node:12
# Create and change to the app directory.
WORKDIR /usr/src/app

#copy package and package-lock.json file
COPY package*.json ./

# Install production dependencies.
RUN npm install --only=production

COPY . .

EXPOSE 4200

CMD [ "npm", "start" ]
