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
    
    post {
        always {
            script {
                // Print directory contents
                bat "docker exec ${containerName} ls -l /"
                
                // Stop and remove Docker container
                bat "docker stop ${containerName} || true"
                bat "docker rm ${containerName} || true"
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
