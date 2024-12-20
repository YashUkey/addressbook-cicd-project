# Use an official Ubuntu base image
FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install required packages
RUN apt update -y && \
    apt install apache2 -y && \
    apt install git -y

# Remove the default index.html file
RUN rm /var/www/html/index.html

# Clone the GitHub repository to the Apache web directory
RUN git clone https://github.com/akshu20791/apachewebsite /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
