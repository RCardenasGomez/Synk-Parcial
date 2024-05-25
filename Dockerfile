# Use an official Node.js runtime as a parent image
FROM node:22.1-bookworm-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
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
