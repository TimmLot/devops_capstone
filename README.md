# devops_capstone
Udacity Cloud DevOps Engineer capstone project

# Kubernetes
The kubernetes cluster on AWS is automatically created with eksctl which is leveraging cloudfront. <br />
For details see createcluster.sh and cluster.yml.
To ensure that at least 75% of the pods are up during deployment the strategy rolling update is used. <br />
See also app.yml

# Jenkins
The jenkins pipeline uses hadolint for linting the dockerfile and tidy for linting the index.html. <br />
In the next step the docker image is created. After creation the image is uploaded to docker hub. <br />
The last is creating the deployment.

# Resources
https://github.com/nginxinc/NGINX-Demos/tree/master/nginx-hello <br />
https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html <br />
https://medium.com/@gustavo.guss/jenkins-building-docker-image-and-sending-to-registry-64b84ea45ee9 <br />
https://kubernetes.io/docs/concepts/workloads/controllers/deployment/


