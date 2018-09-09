# Set the base image to use to Ubuntu
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER Matías Pacheco

#set directoty where CMD will execute 
WORKDIR /

# Get pip to download and install requirements:
RUN pip install --no-cache-dir -r requirements.txt

# Expose ports
EXPOSE 8000

# default command to execute    
CMD python manage.py runserver