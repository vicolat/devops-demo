# Use Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json first to leverage caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all app files
COPY . .

# Expose port Elastic Beanstalk
EXPOSE 8080

# Start the app
CMD ["npm", "start"]