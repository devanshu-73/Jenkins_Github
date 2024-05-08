pipeline {
    agent any
    
    environment {
        PYTHON_EXECUTABLE = "C:\\Users\\Devanshu Chauhan\\AppData\\Local\\Microsoft\\WindowsApps\\python.exe"
    }
    
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
                        // Use the environment variable
                        bat "\"${PYTHON_EXECUTABLE}\" Test_Git_Hub.py"
                    }
                }
            }
        }
    }
}
