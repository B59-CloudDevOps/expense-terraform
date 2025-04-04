pipeline {
    agent any
    parameters {
        choice(name: 'env', choices: ['dev', 'prod'], description: 'Select the environment')
    }
    options { buildDiscarder(logRotator(numToKeepStr: '5')) }
    stages {
        stage('Terraform Init') {
            steps {
                sh "terraform init  -backend-config=env-${env}/state.tfvars -var-file=env-${env}/main.tfvars"
            }
        }
        stage('Terraform Plan') {
            steps {
                sh "terraform plan -var-file=env-${env}/main.tfvars"
            }
        }
        stage('Terraform Apple') {
            steps {
                sh "terraform apply -var-file=env-${env}/main.tfvars -auto-approve"
            }
        }
    }
}