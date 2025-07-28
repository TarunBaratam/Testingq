FROM ubuntu

# Update the package list
RUN apt-get update -y

# Install Apache HTTP server (the package name is actually 'apache2' in Ubuntu, not 'httpd')
RUN apt-get install -y apache2

# Copy your index.html into the default web directory
COPY index.html /var/www/html/index.html

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
