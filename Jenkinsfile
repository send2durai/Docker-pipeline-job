pipeline {
    agent any
    stages {
        stage ('CHECKOUT GIT REPO') {
            steps {
                git branch: 'main', credentialsId: '313ea927-c52a-46bd-9bd2-c038ac77803c', url: 'https://github.com/send2durai/aws-ec2-instance-bootstrap.git'
            }
        }
        stage ('EXECUTING LINUX COMMANDS') {
            steps {
                sh 'echo "Hello World"'
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
                    git version
                    sudo systemctl status docker
                    sudo docker version
                   '''
            }
        }
        stage ('LINUX COMMANDS ARE EXECUTED') {
            steps {
                sh 'echo "Your job is successfully completed"'
                sh 'echo  "Happy learning"'
            }
        }
        stage ('CORONA IS KILLING ENTIRE WORLD'){
            steps {
                sh 'echo "Corona is a dangerous virus"'
                sh 'echo "Please try to get vaccinated to your body"'
            }
        }
        stage ('TIME TO LEARN DEVOPS TOOLS'){
            steps {
                sh 'echo "Learn as much as possible to learn"'
                sh 'echo "The world is moving very FAST"'
            }
        }
        stage ('TESTING DOCKER IMAGES WITH CONTAINERS'){
            steps {
                sh 'echo "First docker images pulling from Docker hub"'
                sh '''
                   docker pull durai5050/backend
                   docker pull durai5050/frontend
                   docker images
                   sleep 3
                   echo "__________ ENDS THE SCRIPT ________"
                   '''
            }
        }
    }
}
