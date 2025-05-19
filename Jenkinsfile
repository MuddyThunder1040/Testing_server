// Jenkins Pipeline to automate Terraform deployment and capture worker IP

pipeline {
    agent any
    stages {
        stage('Print Working Directory') { // Prints the current working directory
            steps {
                sh 'pwd'
            }
        }
        stage('List Files') { // Lists files in the current directory
            steps {
                sh 'ls -l'
            }
        }
        stage('Getting IP Address') { // Captures network configuration to a file
            steps {
                script {
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
                sh 'terraform plan'
            }
        }
        stage('TF APPLY') { // Applies Terraform changes after manual approval
            steps {
                input message: 'Do you want to apply the changes?', ok: 'yes'
                sh 'terraform apply -auto-approve'
            }
        }
        stage('TF file show ') { // Displays the contents of the IP file
            steps {
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
