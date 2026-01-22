FROM mcr.microsoft.com/playwright:v1.49.0-noble

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install
COPY package*.json ./
RUN npm install

# Copy your source code
COPY . .

# Run tests
CMD ["npx", "playwright", "test"]
