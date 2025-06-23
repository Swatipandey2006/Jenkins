echo "hello ${params.VARIABLE_NAME}"
pipeline {
    agent any

    parameters {
        string(name: 'BRANCH', defaultValue: 'main', description: 'Git branch to checkout')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: "${params.BRANCH}",
                    url: 'https://github.com/your-org/https://github.com/Swatipandey2006/Jenkins/edit/main/shell.sh',
                    credentialsId: 'Swatipandey2006'  
            }
        }
    }
}

