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
                    // Print out the current directory for debugging
                    bat 'dir'
                    
                    // Execute the Python script directly
                    bat 'python Test_Git_Hub.py'
                }
            }
        }
    }
}
