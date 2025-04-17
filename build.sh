ECR_REGISTRY="553918714398.dkr.ecr.us-east-1.amazonaws.com"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t victor/trabaws .
docker tag victor/trabaws:latest $ECR_REGISTRY/victor/trabaws:latest
docker push $ECR_REGISTRY/victor/trabaws:latest
