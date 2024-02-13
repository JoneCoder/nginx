# Use the official Nginx base image
FROM nginx:stable-alpine

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx load balancer configuration file to the image
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Create a directory for your web content
RUN mkdir -p /var/www/html

# Set the working directory
WORKDIR /var/www/html