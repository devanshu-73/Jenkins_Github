pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/devanshu-73/Jenkins_Github.git'
            }
        }
        stage('Run Python Script') {
            steps {
                script {
                    dir('Jenkins_Github') {
                        // Use the environment variable 'python'
                        bat 'python Test_Git_Hub.py'
                    }
                }
            }
        }
    }
}