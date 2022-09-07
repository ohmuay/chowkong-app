pipeline {
    agent any
    stages {

        stage('Testing'){
            steps {
                // run script to run test
                sh './scripts/test.sh'
            }
        }

        stage('Building'){
            steps {
                // run script docker build
                sh './scripts/build.sh'
            }
        }

        stage('Deploying') {
            steps {
                // run compose up with no build
                sh './scripts/deploy.sh'
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
    }
}
