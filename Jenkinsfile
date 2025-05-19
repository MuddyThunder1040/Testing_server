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
                    sh 'ifconfig > worker_ip.txt'
                }
            }
        }
      
        stage('TF INIT') {
            steps {
                sh 'terraform init'
            }
        }
        stage('TF PLAN') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('TF APPLY') {
            steps {
                input message: 'Do you want to apply the changes?', ok: 'yes'
                sh 'terraform apply -auto-approve'
            }
        }
        stage('TF file show ') {
            steps {
                sh 'cat worker_ip.txt'
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
