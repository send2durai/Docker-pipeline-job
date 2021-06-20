pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('durai5050-DockerHub')
  }
  stages {
    stage('Build') {
      steps {
        sh '''
           pwd
           cd /home/ec2-user/mynaa/iac-demo/
           docker build -t durai5050/2021-images: apache .
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push docker push durai5050/2021-images:apache'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
