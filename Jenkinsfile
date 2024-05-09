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
                    docker.image(DOCKER_IMAGE).run("-d --name ${CONTAINER_NAME}")
                }
            }
        }
        
        stage('Execute Python Script') {
            steps {
                // Execute a Python script inside the Docker container
                script {
                    docker.container(CONTAINER_NAME).inside {
                        sh 'python -c "print(\'Hello from Python inside Docker!\')"'
                    }
                }
            }
        }
        
        stage('Stop Docker Container') {
            steps {
                // Stop and remove Docker container
                script {
                    docker.container(CONTAINER_NAME).stop()
                    docker.container(CONTAINER_NAME).remove(force: true)
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
