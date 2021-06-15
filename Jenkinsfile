pipeline {
    agent any
    stages {
        stage ('CHECKOUT GIT MASTER REPO') {
            steps {
                git branch: 'main', credentialsId: '94c3a826-3260-462b-ae03-bda756fa3cea', url: 'https://github.com/send2durai/aws-ec2-instance-bootstrap.git'
            }
        }
        stage ('EXECUTING LINUX COMMANDS') {
            steps {
                sh '''
                    ls -lah
                    lsblk
                    df -hT
                    yum list installed >> /home/centos/pack.txt
                    ls -ltr /etc/ >> /home/centos/etc-under-folders.txt
                    sleep 5
                    rm -rf /home/centos/india.html
                    sleep 5
                    sudo cat /etc/sysconfig/jenkins  >> /home/centos/jenkins-conf.txt
                    git version
                    systemctl status docker
                    docker version
                   '''
            }
        }
        stage ('LINUX COMMANDS ARE EXECUTED') {
            steps {
                sh 'echo "Your JOB IS successfully completed"'
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
		   docker info
                   docker pull durai5050/backend:v1
                   docker pull durai5050/frontend:v1
                   docker images
		   sleep 5
		   pwd # To identify the present working directory
		   docker images >> /home/ec2-user/doc-imag.txt
		   pwd
		   cd /home/ec2-user
		   pwd
		   cat /home/ec2-user/doc-imag.txt
                   docker ps
		   docker run -d --name web-srvr -p 80:80 436
		   docker run -d --name mysqldb -p 81:80 2f9
	           docker container ls -q > /home/ec2-user/con-id.txt
                   docker ps 
		   sleep 6
		   echo "_______ docker images and containers are provisioned _______"
		   sleep 6
		   docker container ls -q
		   echo " How to inspect the docker containers using their unique ID"
                   #docker inspect 278 > /home/centos/frontend-cont.txt
                   #docker inspect e65 > /home/centos/backend-cont.txt
                   sleep 3
                   #docker inspect 278 | grep IPAddress
                   #docker inspect e65 | grep IPAddress
                   sleep 1
                   pwd
                   cd /home/ec2-user
                   pwd
                   ls -ltr
                   #cat frontend-cont.txt | grep IPAddress
                   #cat backend-cont.txt | grep IPAddress
                   #cat jenkins-conf.txt
		   sleep 2
                   echo "________ docker images and containers removal _________"
                   sleep 3
		   #docker stop 278 e65
		   #docker rm 278 e65
		   #docker rmi 2f9 436
		   sleep 2
		   #docker ps
		   #docker images
                   echo "__________ ENDS THE SCRIPT ________"
                   '''
            }
        }
    }
}
