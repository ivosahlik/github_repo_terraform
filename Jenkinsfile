pipeline {
    agent any

    stages {
        stage('Setup parameters') {
            steps {
                script {
                    properties([
                        parameters([
                            choice(
                                name: 'ACTION',
                                choices: ['apply, destroy'],
                                description: 'Action to be taken on the Terraform configuration...'
                            )
                        ])
                    ])
                }
            }
        }
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: '<CREDENTIALS_ID>', url: 'https://github.com/ivosahlik/github_repo_terraform.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform action') {
            steps {
                sh 'terraform ${ACTION} --auto-approve'
            }
        }
    }
}