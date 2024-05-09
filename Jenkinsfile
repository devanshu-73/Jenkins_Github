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
                    docker.image(DOCKER_IMAGE).pull()
                }
            }
        }
        
        stage('Check and Create Docker Container') {
            steps {
                script {
                    // Check if the container exists
                    def containerExists = bat(returnStatus: true, script: "docker ps -a --filter name=${CONTAINER_NAME} --format {{.Names}}").trim()

                    if (containerExists) {
                        echo "Container '${CONTAINER_NAME}' already exists"
                    } else {
                        // Create Docker container
                        def dockerRunCommand = "docker run -d --name ${CONTAINER_NAME} ${DOCKER_IMAGE}"
                        bat dockerRunCommand
                    }
                }
            }
        }
        
        stage('Execute Python Script') {
            steps {
                script {
                    // Execute Python script inside the Docker container
                    bat "docker exec ${CONTAINER_NAME} python -c \"print('Hello from Python inside Docker!')\""
                }
            }
        }
    }
    
    post {
        always {
            script {
                // Stop and remove Docker container
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
