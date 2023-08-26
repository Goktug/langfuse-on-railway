FROM ghcr.io/langfuse/langfuse:latest

# Configure environment variables
ARG DATABASE_URL
ENV DATABASE_URL=$DATABASE_URL

ARG DIRECT_URL
ENV DIRECT_URL=$DIRECT_URL

# Run the Prisma migration command
RUN npx prisma migrate deploy

# Expose the necessary port
EXPOSE 3000
