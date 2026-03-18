pipeline {
    agent { 
        // Use a label if you want to target specific CentOS nodes
        label 'centos-node' 
    }

    tools {
        // This name must match the name configured in Global Tool Configuration
        nodejs 'node-20
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
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}
