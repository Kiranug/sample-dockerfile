# Use official Node.js image as base (change as per your app)
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json separately to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application files, including the app folder
COPY . .

# Set the working directory inside the app folder
WORKDIR /app/app

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
