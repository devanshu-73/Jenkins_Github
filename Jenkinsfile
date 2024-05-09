pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'python:latest'
    }
    
    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    docker.image(DOCKER_IMAGE).pull()
                }
            }
        }
        
        stage('Check and Create Docker Container') {
            steps {
                script {
                    // Generate a unique container name based on container ID
                    def containerName = "my-python-container-${UUID.randomUUID().toString()}"

                    // Create Docker container
                    def dockerRunCommand = "docker run -d --name ${containerName} ${DOCKER_IMAGE}"
                    bat dockerRunCommand
                }
            }
        }
        
        stage('Execute Python Script') {
            steps {
                script {
                    // Execute Python script inside the Docker container
                    bat "docker exec ${containerName} python -c \"print('Hello from Python inside Docker!')\""
                }
            }
        }
    }
}
