[200~# Use Microsoft's official Playwright image (pre-installed browsers)
FROM mcr.microsoft.com/playwright:v1.49.0-noble

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your code
COPY . .

# Run Playwright tests
CMD ["npx", "playwright", "test"]
