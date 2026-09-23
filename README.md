# HTML App Reference

A simple HTML application running on **Nginx inside a Docker container**, designed to demonstrate containerization and CI/CD deployment workflows using:

- Docker
- Amazon ECR
- Amazon EKS
- AWS CodeBuild
- GitHub Actions

## Project Structure

```text
html-app-ref/
├── .github/workflows/
│   └── ci-cd.yml
├── buildspec.yml
├── deployment.yaml
├── Dockerfile
├── index.html
└── README.md
```

## Application

The application is a simple static HTML page served by Nginx.

```html
Hello from Ubuntu + Nginx!
```

## Docker

Build the image locally:

```bash
docker build -t html-app .
```

Run the container:

```bash
docker run -d -p 8080:80 html-app
```

Access:

```text
http://localhost:8080
```

## Kubernetes

Deploy using:

```bash
kubectl apply -f deployment.yaml
```

Verify:

```bash
kubectl get deployment
kubectl get pods
kubectl get svc
```

## CI/CD

This repository includes sample pipelines for:

### GitHub Actions

- Build Docker image
- Push image to registry
- Deploy to Amazon EKS

### AWS CodeBuild

- Build Docker image
- Push image to Amazon ECR
- Update Kubernetes manifests
- Deploy to Amazon EKS

## Learning Objectives

- Docker image creation
- Container deployment with Kubernetes
- Amazon ECR image management
- Amazon EKS application deployment
- CI/CD automation using GitHub Actions and AWS CodeBuild

## Author

**Prayag Sangode**
