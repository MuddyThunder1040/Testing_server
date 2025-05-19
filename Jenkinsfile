// Jenkins Pipeline to automate Terraform deployment and capture worker IP

pipeline {
    agent any
    stages {
        
        stage('Getting IP Address') { // Captures network configuration to a file
            steps {
                script {
                    dir '/Users/vishnu/Desktop/Testing_server/aws_instance'
                    sh 'pwd'
                    sh 'ifconfig > worker_ip.txt'
                }
            }
        }
        stage('TF INIT') { // Initializes Terraform
            steps {
                sh 'terraform init'
            }
        }
        stage('TF PLAN') { // Shows Terraform execution plan
            steps {
                dir '/Users/vishnu/Desktop/Testing_server/aws_instance'
                sh 'terraform plan'
            }
        }
        stage('TF APPLY') { // Applies Terraform changes after manual approval
            steps {
                dir '/Users/vishnu/Desktop/Testing_server/aws_instance'
                input message: 'Do you want to apply the changes?', ok: 'yes'
                sh 'terraform apply -auto-approve'
            }
        }
        stage('TF SHOW') { // Displays the Terraform state
            steps {
                dir '/Users/vishnu/Desktop/Testing_server/aws_instance'
                sh 'terraform show'
            }
        }
        stage('TF file show ') { // Displays the contents of the IP file
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
