# Simple Django App

Trying to deploy (I mean, really deploy) a Django app to an EC2 instance using ECS

Note: I did it! Rejoice with [this](http://ec2-54-210-82-193.compute-1.amazonaws.com:8000/) beauty!

![](https://s3.amazonaws.com/nigro-public-assets/evil_laugh.gif)

# Enter the instance

I know, I should not put the .pem key here, but... well... fuck off!

`ssh -i simple_django_app.pem ec2-user@ec2-54-210-82-193.compute-1.amazonaws.com`

# Docker the shit out of this

## Create a [source bundle](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-sourcebundle.html#using-features.deployment.source.git) to transfer the project to the EC2 instance

Generate the source bundle:

`git archive -v -o simple_django_app.zip --format=zip HEAD`

Then unzip the _simple_django_app.zip_ file, and remove it from the server:

`unzip simple_django_app.zip`

`rm simple_django_app.zip`

Upload the source bundle to the instance:

`scp -i simple_django_app.pem simple_django_app.zip ec2-user@ec2-54-210-82-193.compute-1.amazonaws.com:~`

## Build the docker image

`docker build -t simple_django_app .`

## Run the docker image

`sudo docker run -p 8000:8000 -i -t simple_django_app`

# References

[Accessing Linux Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)

[AWS Docker Basics](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html#install_docker)

[Docker + Django](https://dzone.com/articles/how-to-deploy-a-django-application-with-docker)

[DOcker + Django](https://medium.com/@Alibaba_Cloud/how-to-deploy-a-django-application-with-docker-9514be542909)