pipeline {
    agent any
    stages {
        stage ('checkout from GIT') {
            steps {
                git branch: 'main', credentialsId: '313ea927-c52a-46bd-9bd2-c038ac77803c', url: 'https://github.com/send2durai/aws-ec2-instance-bootstrap.git'
            }
        }
        stage ('Executing Linux commands') {
            steps {
                sh 'echo "hello world"'
                sh '''
                    echo "Multiline shell steps works too"
                    ls -lah
                    lsblk
                    df -hT
                    sudo yum list installed >> /home/centos/pack.txt
                    ls -ltr /etc/
                    echo "india is my country" > /home/centos/india.html
                    sleep 5
                    rm -rf /home/centos/india.html
                    sudo cat /var/log/jenkins/jenkins.log
                    sleep 5
                    sudo cat /etc/sysconfig/jenkins
                    ip a s
                    terraform version
                   '''
            }
        }
        stage ('Linux commands are executed') {
            steps {
                sh 'echo "Your job is successfully completed"'
                sh 'echo  "Happy learning"'
            }
        }
        stage ('Corona is killing entire nation'){
            steps {
                sh 'echo "Corona is a dangerous virus"'
                sh 'echo "Please try to get vaccinated to your body"'
            }
        }
        stage ('Time to lear'){
            steps {
                sh 'echo "Learn as much as possible to learn"'
                sh 'echo "The world is moving very fast"'
            }
        }
    }
}
