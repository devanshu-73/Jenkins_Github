pipeline {
    agent any
    
    tools {
        // Define Python installation in Jenkins Global Tool Configuration
        // Use the name "Python3" for reference
        // Specify the installed Python version
        python 'Python3'
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
                        // Use the tool step to reference the Python tool installation
                        // Specify the script to run with Python
                        // Use the name "Python3" to reference the tool installation
                        bat '"${tool name: "Python3", type: "hudson.plugins.python.PythonInstallation"}/python.exe" Test_Git_Hub.py'
                    }
                }
            }
        }
    }
}
