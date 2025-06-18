pipeline {
  agent any
  stages {
    stage('Clean workspace') {
      steps {
        deleteDir()
      }
    }
    stage('Checkout') {
      steps {
        checkout([$class: 'GitSCM', 
          branches: [[name: '*/main']], 
          userRemoteConfigs: [[url: 'https://github.com/AlexBuzea/jenkins-for-node-app']]])
      }
    }
    stage('Build') {
      steps {
        sh 'ls -la'
      }
    }
  }
}