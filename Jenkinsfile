pipeline {
    agent any
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'main', credentialsId: '313ea927-c52a-46bd-9bd2-c038ac77803c', url: 'https://github.com/send2durai/aws-ec2-instance-bootstrap.git'
                
            }
        }
    stage {
        stage ("executing linux commands") {
            steps {
                sh 'sudo yum install bind-utils -y'; sh 'nslookup google.com'
            }
        }
    }
  }
}

 
