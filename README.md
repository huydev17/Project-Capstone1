# Project Capstone - Cloud DevOps Engineer Udacity Nanodegree Program.
In general, I want to finish this task because doing so will show that my Nanodegree in Cloud DevOps Engineer was a success.

# Project information 
As a capstone project, the directions are rather more open-ended than they were in the previous projects in the program. You will also be able to make some of your own choices in this capstone, for the type of deployment you implement, which services you will use, and the nature of the application you develop.

I will develop a CI/CD pipeline for micro services applications with either blue/green deployment or rolling deployment. You will also develop my Continuous Integration steps as you see fit, but must at least include typographical checking (aka “linting”). To make my project stand out, i may also choose to implement other checks such as security scanning, performance testing, integration testing,...

# Technology
+ AWS Cloudformation
+ AWS EKS
+ Docker
+ CircleCI 

## What did I learn?
In this project, i will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:
+ Working in AWS
+ Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
+ Building pipelines
+ Working with Ansible and CloudFormation to deploy clusters
+ Building Kubernetes clusters
+ Building Docker containers in pipelines

# Application settings

My program is a straightforward "Hello World" program. In order to deploy my program, I followed the steps below.

PART 1 - CloudFormation to create infrastructure. This infrastructure is created only one time.
    + Network infrastructure including: VPC, 1 public subnet, 2 private subnets and internet gateway (InfrastructureCreation/Network.yml)

    + aws cloudformation create-stack  --stack-name CapstoneNetwork --region us-east-1 --template-body file://Network.yml  --parameters file://Network-parameters.json

    + Servers infrastructure including: 1 EKS cluster and 1 bastion host to test and administrate my EKS cluster (InfrastructureCreation/Servers.yml)

    + aws cloudformation create-stack  --stack-name CapstoneServers --region us-east-1 --template-body file://Servers.yml  --parameters file://Servers-parameters.json --capabilities CAPABILITY_NAMED_IAM

PART 2 - CircleCI CI/CD to auto deploy my application if any change done using the following sequence
    + code linting
    + docker code building
    + docker code uploading to docker hub
    + deploy new image from docker hub to the EKS cluster

# Output
    + Initially, build the project successfully.
    + Then, I can verify the active application using my cluster endpoint.


