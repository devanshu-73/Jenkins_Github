pipeline {
  agent any
  stages {
    stage('version') {
      steps {
        sh 'python3 --version'
      }
    }
    stage('Running Python File') {
      steps {
        sh 'python3 Test_Git_Hub.py'
      }
    }
  }
}