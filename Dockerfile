# Use the official Node.js image as the base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /user/src/app

#Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies 
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Expose the port on which your application listens
EXPOSE 4000

#Start the application
CMD [ "node", "server.js"]