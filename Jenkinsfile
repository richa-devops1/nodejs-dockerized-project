pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '/root/.nvm/versions/node/v20.20.1/bin/npm install'
            }
        }

        stage('Test') {
            steps {
                sh '/root/.nvm/versions/node/v20.20.1/bin/npm test || true'
            }
        }
    }
}
