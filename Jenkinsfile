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
        checkout scm
      }
    }
  }
}