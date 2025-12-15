# Use official Node.js image
FROM node:18

# Create app directory inside container
WORKDIR /app

# Copy package.json and package-lock.json
COPY server/package*.json ./

# Install dependencies
RUN npm install

# Copy server code
COPY server/ .

# Expose port your server uses
EXPOSE 3000

# Command to start server
CMD ["node", "index.js"]
