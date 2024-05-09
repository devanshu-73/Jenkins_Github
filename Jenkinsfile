pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'python:latest'
        CONTAINER_NAME = "my-python-container-${UUID.randomUUID().toString()}"
        GITHUB_REPO_URL = 'https://github.com/devanshu-73/Jenkins_Github.git'
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
                    // Create Docker container
                    def dockerRunCommand = "docker run -d --name ${CONTAINER_NAME} ${DOCKER_IMAGE}"
                    bat dockerRunCommand
                }
            }
        }
        
        stage('Clone GitHub Repository') {
            steps {
                script {
                    // Clone GitHub repository
                    git branch: 'main', credentialsId: 'your-credentials-id', url: GITHUB_REPO_URL
                }
            }
        }
        
        stage('Execute Python Script') {
            steps {
                script {
                    // Execute Python script inside the Docker container
                    bat dir
                    def pythonScriptPath = 'Test_Git_Hub.py'  // Update this with your script path
                    def dockerExecCommand = "docker exec ${CONTAINER_NAME} python ${pythonScriptPath}"
                    bat dockerExecCommand
                }
            }
        }
    }
}
