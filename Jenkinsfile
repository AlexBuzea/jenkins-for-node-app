pipeline {
  agent {
    docker {
      image 'node:18'
    }
  }

  stages {
    stage('Clone') {
      steps {
        echo 'Cloning repository...'
        checkout scm
      }
    }

    stage('Install Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Run Tests') {
      steps {
        sh 'npm test'
      }
    }
  }
}
