<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:0f2027,100:2c5364&height=200&section=header&text=DevOps%20GitOps%20Platform&fontSize=40&fontColor=ffffff" />
</p>

# 🚀 End-to-End DevOps GitOps Platform (AWS + Kubernetes)

---

## 📌 Overview

This project demonstrates a **complete DevOps pipeline** from infrastructure provisioning to application deployment using modern DevOps tools.

It follows **GitOps principles**, where Git is the single source of truth and deployments are automated using Argo CD.

---

## 🧠 Architecture Diagram

```mermaid
graph TD

A[Developer Push Code] --> B[GitHub Repository]

B --> C[Argo CD GitOps]
C --> D[Kubernetes EKS Cluster]

D --> E[Helm Deployment]
E --> F[Flask App Pods]

F --> G[Service LoadBalancer]

H[Terraform] --> I[AWS Infrastructure]
I --> D

J[Ansible] --> K[Ubuntu DevOps Server]
K --> D

L[Docker] --> M[DockerHub Image]
M --> E

N[Prometheus] --> D
D --> O[Grafana Dashboard]
```

---

## 🔄 DevOps Workflow

```mermaid
flowchart LR

Code[Code Change] --> Git[GitHub Push]
Git --> Argo[Argo CD Sync]
Argo --> K8s[Kubernetes Deploy]
K8s --> App[Flask App Running]

App --> Monitor[Prometheus]
Monitor --> Grafana[Grafana Dashboard]
```

---

## ⚙️ Deployment Flow

```mermaid
sequenceDiagram
    participant Dev as Developer
    participant Git as GitHub
    participant Argo as Argo CD
    participant K8s as Kubernetes

    Dev->>Git: Push Code
    Git->>Argo: Notify Change
    Argo->>K8s: Sync Deployment
    K8s->>K8s: Update Pods
```

---

## 🛠️ Technologies Used

* AWS (EC2, EKS)
* Terraform (Infrastructure as Code)
* Ansible (Configuration Management)
* Docker (Containerization)
* Kubernetes (EKS)
* Helm (K8s Packaging)
* Prometheus & Grafana (Monitoring)
* Argo CD (GitOps)

---

## 📂 Project Structure

```text
end-to-end-devops-gitops-platform/
├── terraform/
├── ansible/
├── app/
├── helm/
│   └── flask-app/
├── argocd/
├── images/
├── README.md
└── .gitignore
```

---

## ⚙️ Step-by-Step Implementation

### 1️⃣ Infrastructure Provisioning (Terraform)

```bash
cd terraform
terraform init
terraform apply
```

---

### 2️⃣ Server Configuration (Ansible)

```bash
cd ansible
ansible-playbook -i inventory.ini playbook.yml
```

---

### 3️⃣ Docker Build & Push

```bash
docker buildx build \
  --platform linux/amd64 \
  -t minabisa90/devops-gitops-flask:v1 \
  --push .
```

---

### 4️⃣ Create Kubernetes Cluster

```bash
eksctl create cluster --name devops-gitops-eks
kubectl get nodes
```

---

### 5️⃣ Deploy Application (Helm)

```bash
helm install flask-app helm/flask-app
kubectl get pods
```

---

### 6️⃣ Monitoring Setup

```bash
helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring
```

---

### 7️⃣ GitOps Deployment (Argo CD)

```bash
kubectl apply -f argocd/application.yaml
```

---

## 📸 Screenshots

### 🏗️ Terraform Infrastructure

![Terraform](images/terraform-apply.png)

---

### ⚙️ Ansible Configuration

![Ansible](images/ansible-success.png)

---

### 🐳 Docker Image (DockerHub)

![Docker](images/dockerhub-image.png)

---

### ☁️ EKS Cluster Nodes

![EKS Nodes](images/eks-nodes.png)

---

### 📦 Kubernetes Pods

![Pods](images/k8s-pods.png)

---

### 🌐 Service LoadBalancer

![Service](images/k8s-service.png)

---

### 🚀 Application Running

![App](images/app-browser.png)

---

### 📊 Grafana Dashboard

![Grafana](images/grafana-dashboard.png)

---

### 🔁 Argo CD GitOps Sync

![ArgoCD](images/argocd-synced.png)

---

## 🔐 Best Practices Implemented

* Infrastructure as Code (Terraform)
* Configuration Automation (Ansible)
* Containerization (Docker)
* Kubernetes Declarative Deployment
* Helm Chart Packaging
* Monitoring & Observability
* GitOps Continuous Deployment

---

## 🎯 Key Learnings

* Built a full DevOps pipeline from scratch
* Automated infrastructure and deployments
* Deployed applications on Kubernetes (EKS)
* Implemented GitOps with Argo CD
* Integrated monitoring using Prometheus & Grafana

---

## 🚀 Future Improvements

* Add CI/CD (GitHub Actions or Jenkins)
* Add Kubernetes Ingress with AWS Load Balancer
* Implement auto-scaling (HPA)
* Secure secrets using AWS Secrets Manager

---

## 👨‍💻 Author

**Mina Bisa**

* GitHub: https://github.com/minabisa
* LinkedIn: https://www.linkedin.com/in/mina-bisa/

---

## ⭐ Support

If you like this project, give it a ⭐ on GitHub!

