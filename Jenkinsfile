pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'python:latest'
        CONTAINER_NAME = 'my-python-container'
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
        
        stage('Run Docker Container') {
            steps {
                script {
                    // Run Docker container
                    def dockerRunCommand = "docker run -d --name ${CONTAINER_NAME} ${DOCKER_IMAGE}"
                    bat dockerRunCommand
                }
            }
        }
        
        stage('Execute Python Script') {
            steps {
                // Execute a Python script inside the Docker container
                script {
                    bat 'docker exec ${CONTAINER_NAME} python -c "print(\'Hello from Python inside Docker!\')"'
                }
            }
        }
    }
    
    post {
        always {
            // Stop and remove Docker container
            script {
                try {
                    bat "docker stop ${CONTAINER_NAME}"
                } catch (Exception e) {
                    echo "Failed to stop container: ${e.message}"
                }
                try {
                    bat "docker rm ${CONTAINER_NAME}"
                } catch (Exception e) {
                    echo "Failed to remove container: ${e.message}"
                }
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
