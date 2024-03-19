pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Code Coverage') {
            steps {
                echo 'code coverage stage'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t munish281997/my-img:latest .'
            }
        }
        stage('Docker Login') {
            steps {
               sh 'docker login -u $Munish281997 -p $Mb2807mn@28'
                }
            }
        }
        stage('Docker Push') {
            steps {
                sh 'docker push munish281997/my-img:latest .'
            }
        }
}
