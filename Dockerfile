# Use Ubuntu as base image
FROM ubuntu:24.04

# Install nginx and clean apt cache to reduce image size
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

# Copy HTML app files 
COPY index.html /var/www/html/index.html

# Its only for documentation purpose
EXPOSE 80

# Run nginx in foreground so container stays alive
CMD ["nginx", "-g", "daemon off;"]

