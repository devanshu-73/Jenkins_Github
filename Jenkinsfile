pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'python:latest'
    }
    
    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    // Pull the Docker image
                    docker.image(DOCKER_IMAGE).pull()
                }
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline successful!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
