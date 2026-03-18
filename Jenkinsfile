pipeline {
    agent any
    stages {
        stage("checkout"){
            steps {
                checkout scm
            }
        }
        stages {
        stage('Check Version') {
            steps {
                // Verify Node and NPM are available
                sh 'node -v'
                sh 'npm -v'
            }
        }
        stage("Build"){
            steps {
                sh 'sudo npm install'
            }
        }
        stage("Test"){
            steps {
                sh 'npm test'
            }
        }
    }
}
}
            echo 'Pipeline completed.'
        }
    }
}
