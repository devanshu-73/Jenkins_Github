pipeline {
  agent any
  stages {
    stage('version') {
      steps {
        sh 'python3 --version'
      }
    }
    stage('Test_Git_Hub') {
      steps {
        sh 'python3 Test_Git_Hub.py'
      }
    }
  }
}