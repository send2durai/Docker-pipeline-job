pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('durai5050-DockerHub')
  }
  stages {
    stage('Docker Build') {
      steps {
        sh '''
           pwd
           cd /home/ec2-user/mynaa/Docker-pipeline-job
           docker build -t durai5050/2021-images:apache .
           docker images
           '''
      }
    }
    stage('Docker Login') {
      steps {
        sh 'echo "Trying to login DockerHub account"'
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push durai5050/2021-images:apache'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
