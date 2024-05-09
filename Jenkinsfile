pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'python:latest'
        CONTAINER_NAME = "my-python-container-${UUID.randomUUID().toString()}"
        GITHUB_REPO_URL = 'https://github.com/devanshu-73/Jenkins_Github.git'
        SCRIPT_NAME = 'Test_Git_Hub.py'  // Update this with the name of your Python script
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
                    git branch: 'main', url: GITHUB_REPO_URL
                    // Print the files pulled from GitHub
                    echo 'Files pulled from GitHub:'
                    bat 'ls -l'
                }
            }
        }
        
        stage('Copy Script to Docker Container') {
            steps {
                script {
                    // Copy script to Docker container
                    def dockerCopyCommand = "docker cp ${SCRIPT_NAME} ${CONTAINER_NAME}:/"
                    bat dockerCopyCommand
                }
            }
        }
        
        stage('Execute Python Script') {
            steps {
                script {
                    // Execute Python script inside the Docker container
                    def dockerExecCommand = "docker exec ${CONTAINER_NAME} python /${SCRIPT_NAME}"
                    bat dockerExecCommand
                }
            }
        }
    }
}
