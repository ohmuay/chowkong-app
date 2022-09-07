pipeline {
    agent any
    stages {

        stage('Testing'){
            steps {
                // run script to run test
                sh 'chmod +x ./scripts/test.sh'
                sh './scripts/test.sh'
            }
        }

        stage('Building'){
            steps {
                // run script docker build
                sh 'chmod +x ./scripts/build.sh'
                sh './scripts/build.sh'
            }
        }

        stage('Deploying') {
            steps {
                // run compose up with no build
                 sh 'chmod +x ./scripts/deploy.sh'
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
