pipeline {
    agent any
    tools {
        // "NodeJS-20" must match the name you gave the tool in Global Tool Configuration
        nodejs "NodeJS-20" 
    }
    stages{
        stage("checkout"){
            steps{
                checkout scm
            }
        }

        stage("Test"){
            steps{
                sh 'npm install'
                sh 'npm test'
            }
        }
        stage("Build"){
            steps{
                sh 'npm run build'
            }
        }
    }
}
