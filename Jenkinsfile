// Jenkins Pipeline to automate Terraform deployment and capture worker IP

pipeline {
    agent any
    stages {
        
        stage('Getting IP Address') { // Captures network configuration to a file
            steps {
                script {
                    dir('/Users/vishnu/Desktop/Testing_server/aws_instance') {
                        sh 'pwd'
                        sh 'ifconfig > worker_ip.txt'
                    }
                }
            }
        }
        stage('TF INIT') { // Initializes Terraform
            steps {
                sh 'terraform init'
            }
        }
            steps {
                dir('/Users/vishnu/Desktop/Testing_server/aws_instance') {
                    sh 'terraform plan'
                }
            }
            }
            steps {
                dir('/Users/vishnu/Desktop/Testing_server/aws_instance') {
                    input message: 'Do you want to apply the changes?', ok: 'yes'
                    sh 'terraform apply -auto-approve'
                }
            }
                sh 'terraform apply -auto-approve'
            steps {
                dir('/Users/vishnu/Desktop/Testing_server/aws_instance') {
                    sh 'terraform show'
                }
            }
                dir '/Users/vishnu/Desktop/Testing_server/aws_instance'
            steps {
                dir('/Users/vishnu/Desktop/Testing_server/aws_instance') {
                    sh 'cat worker_ip.txt'
                }
            }
            steps {
                dir '/Users/vishnu/Desktop/Testing_server/aws_instance'
                sh 'cat worker_ip.txt'
            }
        }
        stage('Post-Deployment') { // Final message after deployment
            steps {
                script {
                    echo 'Deployment completed successfully!'
                }
            }
        }
    }
}
