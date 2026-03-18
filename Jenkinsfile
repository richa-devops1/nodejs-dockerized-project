pipeline {
    agent any
    stages {
        stage("checkout"){
            steps {
                checkout scm
            }
        }

        stage("Build"){
            steps {
                sh 'export PATH=$PATH:/usr/local/bin; sh 'npm install'
            }
        }
        stage("Test"){
            steps {
                sh 'npm test'
            }
        }
    }
}
