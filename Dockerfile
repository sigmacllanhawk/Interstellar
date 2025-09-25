FROM node:bookworm-slim
ENV NODE_ENV=production

WORKDIR /app

# Copy dependency files
COPY ["package.json", "package-lock.json*", "./"]

# Install only production deps
RUN npm install --production

# Copy the rest of the source
COPY . .

# Expose port (adjust if your app uses a different one)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
