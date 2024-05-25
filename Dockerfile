# Use an official Node.js runtime as a parent image
FROM debian:stable-slim

# Instalar Node.js y npm
RUN apt-get update && apt-get install -y nodejs npm

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Show current directory contents
RUN ls -la

# Install app dependencies
RUN npm install

# Show installed node modules
RUN ls -la node_modules

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]
