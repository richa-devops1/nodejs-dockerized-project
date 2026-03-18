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
                sh 'npm install'
                sh '.tmp/durable-65b86ecb/script.sh.copy'
                
            }
        }
        stage("Test"){
            steps {
                sh 'npm test'
            }
        }
    }
}
