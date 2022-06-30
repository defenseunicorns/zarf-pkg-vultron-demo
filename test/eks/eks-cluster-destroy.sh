#!/bin/bash

# Delete cluster
echo "Delete EKS cluster"
eksctl delete cluster -f eks-cluster.yaml