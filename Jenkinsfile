pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository, specifying the 'main' branch
                git branch: 'main', url: 'https://github.com/devanshu-73/Jenkins_Github.git'
            }
        }
        stage('Run Python Script') {
            steps {
                script {
                    // Change directory to where your Python script is located
                    dir('Jenkins_Github') {
                        // Execute the Python script
                        sh 'python3 Test_Git_Hub.py'
                    }
                }
            }
        }
    }
}
