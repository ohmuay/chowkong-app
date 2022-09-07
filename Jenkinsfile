pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                sh 'docker-compose up -d --build'
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
    }
}
