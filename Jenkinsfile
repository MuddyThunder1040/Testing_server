pipeline {
    agent any
    stages {
        stage('Print Working Directory') {
            steps {
                sh 'pwd'
            }
        }
        stage('List Files') {
            steps {
                sh 'ls -l'
            }
        }
        stage('Getting IP Address') {
            steps {
                script {
                    sh 'ifconfig'
                }
            }
        }
    }
}
