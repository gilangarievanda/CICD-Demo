---
inclusion: auto
---

# AWS EKS CI/CD Demo Context

## Cluster Information
- **Cluster Name:** curious-alternative-shark-Gilang
- **Cluster Type:** EKS Auto Mode
- **AWS Region:** ap-southeast-1 (Singapore)
- **AWS CLI Profile:** PartnerID

## Common CLI Patterns

```bash
# AWS CLI with profile
aws --profile PartnerID --region ap-southeast-1 ...

# Update kubeconfig
aws eks update-kubeconfig --name curious-alternative-shark-Gilang --region ap-southeast-1 --profile PartnerID

# kubectl commands (after kubeconfig is set)
kubectl get nodes
kubectl get pods -A
```

## CI/CD Stack
- **Source:** GitHub (via CodeStar Connection)
- **GitHub Repo:** https://github.com/gilangarievanda/CICD-Demo.git
- **CI/CD:** AWS CodePipeline + CodeBuild
- **Container Registry:** Amazon ECR (repo: `cicd-demo`)
- **Deploy Target:** EKS Auto Mode
- **Branch:** main
- **Buildspec:** buildspec.yml (root)

## Demo Focus
- CI/CD pipeline: GitHub → CodePipeline → CodeBuild → ECR → EKS Auto Mode
- Region: Singapore (ap-southeast-1)
