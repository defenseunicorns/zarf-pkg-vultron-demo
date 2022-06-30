#!/bin/bash

scriptDir=$(pwd)

# Check for env file (~/.kubevirt-eks)
envFile=~/.hncd-eks
if [ -f "$envFile" ]; then
    source $envFile 
else
    echo "Environment file with registry1 credentials does not exist."
    exit 1
fi

# Create EKS cluster
eksctl create cluster -f eks-cluster.yaml

# Give AWS access to other team members
for user in ${USER_LIST[@]}; do
    eksctl create iamidentitymapping --cluster kuvevirt-test-cluster --region=us-east-1 --arn \
    arn:aws:iam::${AWS_ACCOUNT_ID}:user/$user --group system:masters --no-duplicate-arns
done
