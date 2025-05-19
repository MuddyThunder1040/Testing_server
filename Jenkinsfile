// Jenkins Pipeline to automate Terraform deployment and capture worker IP

pipeline {
    agent any

    environment {
        WORK_DIR = '/Users/vishnu/Desktop/Testing_server/aws_instance'
    }

    stages {
        stage('Getting IP Address') {
            steps {
                dir("${env.WORK_DIR}") {
                    sh 'pwd'
                    sh 'ifconfig > worker_ip.txt'
                }
            }
        }

        stage('TF INIT') {
            steps {
                dir("${env.WORK_DIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('TF PLAN') {
            steps {
                dir("${env.WORK_DIR}") {
                    sh 'terraform plan'
                }
            }
        }

        stage('TF APPLY') {
            steps {
                dir("${env.WORK_DIR}") {
                    input message: 'Do you want to apply the changes?', ok: 'yes'
                    sh 'terraform apply -auto-approve'
                }
            }
        }

        stage('TF SHOW') {
            steps {
                dir("${env.WORK_DIR}") {
                    sh 'terraform show'
                }
            }
        }

        stage('Show IP File') {
            steps {
                dir("${env.WORK_DIR}") {
                    sh 'cat worker_ip.txt'
                }
            }
        }

        stage('Post-Deployment') {
            steps {
                echo '✅ Deployment completed successfully!'
            }
        }
    }
}
