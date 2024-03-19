pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        echo 'hello from jenkins '
      }
    }

    stage('second stage') {
      steps {
        sleep 100
      }
    }

    stage('build') {
      steps {
        build(job: 'Job1 ', wait: true)
      }
    }

  }
}