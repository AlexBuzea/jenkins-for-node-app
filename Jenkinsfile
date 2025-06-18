pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/your-nodejs-app.git'
            }
        }
        stage('Test') {
            steps {
                sh 'node test.js'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('my-node-app:latest')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 3000:3000 my-node-app:latest'
            }
        }
    }
    post {
        always {
            sh 'docker system prune -f'
        }
    }
}
