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
      
        stage('node version') {
            steps {
                sh 'node -v'
            }
        }
        stage('npm version') {
            steps {
                sh 'npm -v'
            }
        }
        stage('Post-Deployment') {
            steps {
                script {
                    echo 'Deployment completed successfully!'
                }
            }
        }
    }
}
