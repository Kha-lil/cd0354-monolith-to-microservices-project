# This file is used for convenience of local development.
# DO NOT STORE YOUR CREDENTIALS INTO GIT
export POSTGRES_USERNAME=postgres
export POSTGRES_PASSWORD=mypassword
export POSTGRES_HOST=postgres.cr9bldgsf1j6.us-east-1.rds.amazonaws.com
export POSTGRES_DB=postgres
export AWS_BUCKET=arn:aws:s3:::mybucket1200798
export AWS_REGION=us-east-1
export AWS_PROFILE=default
export JWT_SECRET=testing
export URL=http://localhost:8100


aws eks create-cluster --region us-east-1 --name Udagram-EKS-Cluster --kubernetes-version 1.22 --role-arn arn:aws:iam::842718074151:role/UdagrameksClusterRole --resources-vpc-config subnetIds=subnet-094f523c1204ebe81,subnet-0dc90f189b1399e8d,subnet-04a6eb5569c2c3cb1,subnet-04b93c000034894f8,securityGroupIds=sg-062fb0a89fa7d3ab6

aws eks update-kubeconfig --region us-east-1 --name Udagram-EKS-Cluster

 eksctl create cluster --name Udagram-EKS-Cluster-Project --region=us-east-2 --nodes-min=2 --nodes-max=3


eksctl delete cluster --name=<Udagram-EKS-Cluster> [--region=<us-east-2>]
