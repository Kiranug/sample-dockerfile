# Use official Node.js image as base
FROM node:18

# Set working directory
WORKDIR /app

# Accept environment variable from build args
ARG ENVIRONMENT_TEST
ENV ENVIRONMENT_TEST=${ENVIRONMENT_TEST}

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application files
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "app/index.js"]
