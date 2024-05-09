pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'python:latest'
        CONTAINER_NAME = 'my-python-container' // Define the CONTAINER_NAME variable here
    }
    
    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    docker.image(DOCKER_IMAGE).pull()
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    def dockerRunCommand = "docker run -d --name ${CONTAINER_NAME} ${DOCKER_IMAGE}"
                    bat dockerRunCommand
                }
            }
        }
        
        stage('Execute Python Script') {
            steps {
                script {
                    bat "docker exec ${CONTAINER_NAME} python -c \"print('Hello from Python inside Docker!')\""
                }
            }
        }
    }
    
    post {
        always {
            script {
                bat "docker stop ${CONTAINER_NAME}"
                bat "docker rm ${CONTAINER_NAME}"
            }
        }
        success {
            echo 'Pipeline successful!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
