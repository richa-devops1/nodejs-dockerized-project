pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh '.durable-e46c3bff/script.sh.copy'
            }
        }
    }
}
