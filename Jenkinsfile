pipeline {
  agent any

  // don’t do the default “Declarative: Checkout SCM” step
  options {
    skipDefaultCheckout()
  }

  stages {
    stage('Checkout') {
      steps {
        // Wipe out whatever’s in the workspace
        deleteDir()
        // Now do a single, clean clone
        checkout scm
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          // build your Node.js image
          docker.build('my-node-app:latest')
        }
      }
    }

    stage('Run Tests') {
      steps {
        // example: run a container and invoke your test script
        sh '''
          docker run --rm my-node-app:latest node test.js
        '''
      }
    }
  }

  post {
    always {
      // optional cleanup
      sh 'docker system prune -f'
    }
  }
}
