pipeline {
    agent any
    
    stages {
        stage('Pull from GitHub') {
            steps {
                git 'https://github.com/devanshu-73/Jenkins_Github.git'
                script {
                    echo 'Files pulled from GitHub:'
                    bat 'dir' // List files pulled from GitHub
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('my-python-image') // Build Docker image
                }
            }
        }
        stage('Run Python Script in Container') {
            steps {
                script {
                    docker.image('my-python-image').inside {
                        sh 'python Test_Git_Hub.py' // Run Test_Git_Hub.py script inside the container
                    }
                }
            }
        }
    }
}
