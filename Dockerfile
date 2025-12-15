# Smaller & faster Node image
FROM node:18-alpine

# App directory inside container
WORKDIR /app

# Copy only package files first (for caching)
COPY server/package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the server code
COPY server/ .

# Expose backend port
EXPOSE 3000

# Start server
CMD ["node", "index.js"]
