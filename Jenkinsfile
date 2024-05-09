pipeline {
    agent any
    
    stages {
        stage('Pull from GitHub') {
            steps {
                git 'https://github.com/devanshu-73/Jenkins_Github.git'
            }
        }
        stage('Build and Run in Docker') {
            steps {
                script {
                    docker.build('my-python-image') // Build Docker image
                    docker.image('my-python-image').inside {
                        sh 'python Test_Git_Hub.py' // Run Test_Git_Hub.py script inside the container
                    }
                }
            }
        }
    }
}
