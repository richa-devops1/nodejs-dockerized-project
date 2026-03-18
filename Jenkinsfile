pipeline {
    agent any
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
}
