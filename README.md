# Simple Django App

Trying to deploy (I mean, really deploy) a Django app to an EC2 instance using ECS

# Enter the instance

I know, should not put the .pem key here, but... well... fuck off

`ssh -i simple_django_app.pem ec2-user@ec2-54-210-82-193.compute-1.amazonaws.com`

# Docker the shit out of this

Create a [source bundle](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-sourcebundle.html#using-features.deployment.source.git) to transfer the project to the EC2 instance

# Reference

[Accessing Linux Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)
[AWS Docker Basics](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html#install_docker)
[Docker + Django](https://dzone.com/articles/how-to-deploy-a-django-application-with-docker)
[DOcker + Django](https://medium.com/@Alibaba_Cloud/how-to-deploy-a-django-application-with-docker-9514be542909)