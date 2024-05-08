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
                    // Change directory to the specified location and then run Python script
                    bat 'cd d/ && "C:\\Users\\Devanshu Chauhan\\AppData\\Local\\Microsoft\\WindowsApps\\python.exe" Test_Git_Hub.py'
                }
            }
        }
    }
}
