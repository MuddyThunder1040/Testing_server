// Jenkins Pipeline to automate Terraform deployment and capture worker IP

pipeline {
    agent any
    stages {
        
        stage('Getting IP Address') { // Captures network configuration to a file
            steps {
                script {
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
                sh 'terraform plan'
            }
        }
        stage('TF APPLY') { // Applies Terraform changes after manual approval
            steps {
                input message: 'Do you want to apply the changes?', ok: 'yes'
                sh 'terraform apply -auto-approve'
            }
        }
        stage('TF SHOW') { // Displays the Terraform state
            steps {
                sh 'terraform show'
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
