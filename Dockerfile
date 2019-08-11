FROM centos:7

USER root



# Update image
RUN yum update -y
RUN yum install httpd procps-ng MySQL-python -y

# Add configuration file
RUN echo "The Web Server is Running" > /var/www/html/index.html
EXPOSE 80

# Start the service
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]

