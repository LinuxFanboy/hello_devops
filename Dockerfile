# Official NodeJS image
FROM node:18

# Set working dir
WORKDIR /usr/src/app

# Copy package.json && package-lock.json
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy all files
COPY . .

# Declare a port
EXPOSE 3000

# Set command to run app
CMD [ "node", "index.js" ]