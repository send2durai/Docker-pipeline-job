pipeline {
    agent any
    stages {
        stage ('CHECKOUT GIT') {
            steps {
                git branch: 'main', credentialsId: '8e5538c9-18f5-406f-9c48-c388b15b44a9', url: 'https://github.com/send2durai/aws-ec2-instance-bootstrap.git'
            }
        }
        stage ('EXECUTING LINUX COMMANDS') {
            steps {
                sh '''
                    lsblk
                    df -h
		    id
                    sleep 5
                    cat /etc/sysconfig/jenkins  >> /home/ec2-user/jen-conf.txt
                    git version
                    systemctl status docker
                    docker version
                   '''
            }
        }
        stage ('JENKINS IS AN OPEN SOURCE CI/CD TOOLS') {
            steps {
                sh 'echo "To setup anykind of jobs in automated way"'
                sh 'echo  "Happy learning"'
            }
        }
        stage ('ADVERTISING CORONA IS A DANGEROUS VIRUS'){
            steps {
                sh 'echo "Corona is a dangerous virus"'
                sh 'echo "Please try to get vaccinated to your body"'
            }
        }
        stage ('TIME TO LEARN DEVOPS AND ITS TOOLS'){
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
                   #docker pull durai5050/backend:v1
                   #docker pull durai5050/frontend:v1
		   pwd # To identify the present working directory
		   docker images >> /home/ec2-user/docimag.txt
		   pwd
		   cd /home/ec2-user
		   pwd
		   awk '{ print$3 }' docimag.txt
		   #docker run -d --name web-srvr -p 80:80 436
		   #docker run -d --name mysqldb -p 81:80 2f9
	           #docker ps -a > /home/ec2-user/cont.txt
		   #echo "_______ docker images and containers are provisioned _______"
		   sleep 5
		   echo " How to inspect the docker containers using their unique ID ??"
		   #docker start fcc d57
		   docker ps -a > /home/ec2-user/cont.txt
		   awk '{ print$1 }' cont.txt
                   docker inspect fcc > /home/ec2-user/frontend-cont.txt
                   docker inspect d57 > /home/ec2-user/backend-cont.txt
                   sleep 3
                   #docker inspect fcc | grep IPAddress
                   #docker inspect d57 | grep IPAddress
		   docker inspect -f '{{.NetworkSettings.IPAddress}}' fcc > /home/ec2-user/CIP
		   docker inspect -f '{{.NetworkSettings.IPAddress}}' d57 >> /home/ec2-user/CIP1
                   sleep 5
                   pwd
                   cd /home/ec2-user
                   ls -ltr
		   cat CIP
                   #cat frontend-cont.txt | grep IPAddress
                   #cat backend-cont.txt | grep IPAddress
                   cat jen-conf.txt | grep JENKINS_USER
		   sleep 2
                   echo "________ docker images and containers removal _________"
                   sleep 3
		   #docker stop fcc d57
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
