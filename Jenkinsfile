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
       sh 'docker build -t munish281997/my-image:latest .'
      }
    }

    stage('Docker Login') {
      steps {
        sh 'docker login -u $Munish281997 -p $Mb2807mn@28'
      }
    }

    stage('Docker push') {
      steps {
        sh 'docker push munish281997/my-image:latest'
      }
    }

  }
}
