In this project, there are 3 workshops:
1. IaC (Terraform) scripts to provision an infrastructure stack comprising:
   a) a docker network
   b) a container running MYSQL database in the docker network
   c) 3 containers running nodejs applications with connection to the MYSQL database in the docker network
   d) an nginx server running in Digital Ocean which routes traffic to the backend instances
2. IaC (Terraform & Ansible) scripts to provision a code server in Digital Ocean
3. IaC (Packer & Ansibile) scripts to build a code server image in Digital Ocean and Terraform scripts to provision a code server using the image