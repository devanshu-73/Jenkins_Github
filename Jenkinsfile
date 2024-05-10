// pipeline {
//     agent any
    
//     stages {
//         stage('Pull from GitHub') {
//             steps {
//                 git 'https://github.com/devanshu-73/Jenkins_Github.git'
//             }
//         }
//         stage('Build and Run in Docker') {
//             steps {
//                 script {
//                     docker.build('my-python-image') // Build Docker image
//                     docker.image('my-python-image').inside {
//                         sh 'python Test_Git_Hub.py' // Run Test_Git_Hub.py script inside the container
//                     }
//                 }
//             }
//         }
//     }
// }

// ===================================================================================


pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                bat 'git clone https://github.com/devanshu-73/Jenkins_Github.git'
            }
        }
        stage('Run Python Script in Docker') {
            steps {
                script {
                    docker.image('python').inside {
                        bat 'pip install -r requirements.txt' // If there's any requirements
                        bat 'python Test_Git_Hub.py'
                    }
                }
            }
        }
    }
}
