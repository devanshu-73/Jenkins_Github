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
                        // Specify the full path to the Python executable
                        bat '"C:\\Users\\Devanshu Chauhan\\AppData\\Local\\Microsoft\\WindowsApps\\python.exe" Test_Git_Hub.py'
                    }
                }
            }
        }
    }
}
