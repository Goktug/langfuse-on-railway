FROM ghcr.io/langfuse/langfuse:latest

# Run the Prisma migration command
RUN npx prisma migrate deploy --skip-generate

# Expose the necessary port
EXPOSE 3000

# Start langfuse
CMD ["npm", "start"]
