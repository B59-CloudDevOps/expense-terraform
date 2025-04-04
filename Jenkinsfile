pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    parameters {
        choice(name: 'environment', choices: ['dev', 'prod'], description: 'Select the environment')
    }
    options { buildDiscarder(logRotator(numToKeepStr: '5')) }
    stages {
        stage('Terraform Init') {
            steps {
                sh "terraform init  -backend-config=env-${params.environment}/state.tfvars -var-file=env-${params.environment}/main.tfvars"
            }
        }
        stage('Terraform Plan') {
            steps {
                sh "terraform plan -var-file=env-${params.environment}/main.tfvars"
            }
        }
        stage('Terraform Apply') {
            steps {
                sh "terraform apply -var-file=env-${params.environment}/main.tfvars -auto-approve"
            }
        }
    }
}