FROM node:14 

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if present) to the container
COPY package*.json ./

# Install dependencies specified in package.json
RUN npm install

# Copy all other files from the current directory to the container
COPY . .

# Expose port 80 to allow external access to the application
EXPOSE 80

# Define the command to start the application
CMD ["node", "server.js"]



# docker build -t expres .
# docker run -p 8080:8080 expres
