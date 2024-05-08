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
                    
                    dir('Jenkins_Github') {
                        // Execute the Python script
                        bat 'python Test_Git_Hub.py'
                    }
                }
            }
        }
    }
}
