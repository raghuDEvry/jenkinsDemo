# Use the official Ubuntu image as a base
FROM ubuntu:24.04

# Update the package list and install Apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Copy the HTML file into the Apache web root directory
COPY index.html /var/www/html/index.html

# Expose port 80 to access the web server
EXPOSE 80

# Start Apache2 in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
