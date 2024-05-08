pipeline {
    agent any
    
    environment {
        // Use the environment variable PYTHON_HOME to reference the Python executable
        PYTHON_EXECUTABLE = "${env.PYTHON_HOME}\\python.exe"
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
                        // Use the PYTHON_EXECUTABLE variable to run the Python script
                        bat "${PYTHON_EXECUTABLE} Test_Git_Hub.py"
                    }
                }
            }
        }
    }
}
