# Use Ubuntu as base image
FROM ubuntu:latest

# Update package lists and install Apache
RUN apt-get update \
    && apt-get install -y apache2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Expose port 80 (default port for HTTP)
EXPOSE 80

# Start Apache in the foreground when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
