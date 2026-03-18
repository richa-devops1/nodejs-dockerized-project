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
                sh './jenkins/scripts/test.sh'
                
            }
        }
        stage("Test"){
            steps {
                sh 'npm test'
            }
        }
    }
}
