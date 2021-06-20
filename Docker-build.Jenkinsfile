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
           echo "Starts building the Image from Dockerfile"
           cd /home/ec2-user/mynaa/Docker-pipeline-job
           docker build -t durai5050/2021-images:web-nginx .
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
    stage('Docker Push') {
      steps {
        sh 'echo "Pushing the built images to Dockerhub"'
        sh 'docker push durai5050/2021-images:web-nginx'
      }
    }
  }
  post {
    always {
      sh 'echo "Image has been pushed to Dockerhub.Hence logging out our session"'
      sh 'docker logout'
    }
  }
}
