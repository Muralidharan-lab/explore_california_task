Containerizing and Deploying the Explore California Sample Web App

1. Sample web app:
  - Fork the [Explore California repository](https://github.com/mickeyjohn/explore_california) and clone it local

Git fork = used fork button to fork

Copy the URL then run git clone https://github.com/Muralidharan-lab/explore_california.git in git bash to clone the repo

2. Kubernetes Runtime Setup: Rancher Desktop
  
Link to Install Ranger desktop: Rancher Desktop by SUSE 

 



install Linux on Windows with WSL:  Install WSL | Microsoft Learn

Run in powershell : wsl --install
 





3. Containerization:
  - Write a Dockerfile for the web app and build the image.
  - Test the containerized app to ensure it runs correctly.

In linux : install docker,kubectl,git if its not there
snap install docker
snap install kubectl
snap install git-ubuntu = for clone https://github.com/mickeyjohn/explore_california
Docker login : for pull and push image



Docker file :

 

Cmd to build :

-	Docker build -t test .

Cmds Tag, push and Run to Docker Hub: 

-	docker tag test muralidharan1993/murali_demo
-	docker push muralidharan1993/murali_demo

-	Docker run -d muralidharan1993/murali_demo
 

Working status check: 

-	Docker inspect <CONTAINERID> = run this cmd to get the ip 
-	curl -kiv 172.17.0.2:80  = to check the o/p
 

4. Kubernetes Deployment:

Create files for deployment and service.
Deployment.yaml  file:

 






Service.yaml file:

 

  - Deploy the app to your Kubernetes runtime and ensure it's operational.

Cmds to apply both: kubectl apply -f deployment.yaml && kubectl apply -f service.yaml

Check the pod status: kubectl get pods
 

Check the service : kubectl get svc
 

Login to pod: kubectl exec -it explore-california-deployment-6c8f7f6bfc-chqff – sh











Working inside the pod:
 

5. Exposing the App:

Configured NodePort service to exposing the App:

 


In  Browser:  http://localhost:30382

 

 

