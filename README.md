⚙️ Jenkins Pipeline
Pipeline stages:
Install dependencies
Build Docker image
Login to Docker Hub
Push image
🔄 CI/CD Flow

Code Push → Jenkins Build → Docker Build → Docker Push
🚨 Troubleshooting
Issue: npm command not found
Install Node.js in Jenkins server
Configure PATH properly
Issue: Docker permission denied
Bash
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
Issue: Docker push failed
Check Docker Hub credentials in Jenkins
Ensure correct image name (username/repo)
