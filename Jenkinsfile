pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        echo 'hello from jenkins '
      }
    }

    stage('Build Maven Project') {
      steps {
        sh 'mvn clean package'
      }
    }

    stage('Code Coverage ') {
      steps {
        echo 'Code Coverage Stage'
      }
    }

    stage('Docker build') {
      steps {
        build 'my-image:latest'
      }
    }

    stage('Docker Login') {
      steps {
        sh 'docker login -u $USERNAME -p $PASSWORD'
      }
    }

    stage('Docker push') {
      steps {
        sh 'docker push my-image:latest'
      }
    }

  }
}