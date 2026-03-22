pipeline {
    agent any
    tools {
        nodejs 'Node20' // Use the name from step 2
    }
    stages {
        stage('Check Version') {
            steps {
                // Verify Node and NPM are available
                sh 'node -v'
                sh 'npm -v'
            }
        }
        stage('Install Dependencies') {
            steps {
                // Install your project dependencies
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                // Run your application tests
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                // Build your application (e.g., for React/Vue)
                sh 'npm run build'
            }
        }
        stage ('Build image') {
            steps {
                sh 'docker build -t my-node-app:1.0 .'
            }
        }
          stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh 'docker login -u $DOCKER_USER -p $DOCKER_PASSWORD'
                    sh 'docker tag my-node-app:1.0 richdevops/my-node-app:1.0'
                    sh 'docker push richdevops/my-node-app:1.0'
                    sh 'docker  logout'
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'docker push richdevops/my-node-app:1.0'
                sh 'docker  logout'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml --validate=false'
                sh 'kubectl apply -f service.yaml'
            } 
        }    
        
    }  
}  
