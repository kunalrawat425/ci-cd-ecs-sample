# Step 1: Use official Node.js image as a base
FROM node:18-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the rest of the application code
COPY . .

# Step 5: Expose the port your app will run on (3000 in this case)
EXPOSE 3000

# Step 6: Define the command to run your app
CMD ["node", "index.js"]