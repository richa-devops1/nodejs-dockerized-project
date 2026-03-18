pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'sudo yum install npm'
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build '
            }
        }
    }
}
