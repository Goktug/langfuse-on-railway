FROM ghcr.io/langfuse/langfuse:latest

WORKDIR /app

# Copy the application files to the container
COPY . .

# Install dependencies
RUN npm install

# Run the Prisma migration command
RUN npx prisma migrate deploy --skip-generate

# Expose the necessary port for langfuse
EXPOSE 3000

# Start langfuse
CMD ["npm", "start"]
