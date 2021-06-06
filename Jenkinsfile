pipeline {
    agent any
    stages {
        stage ('CHECKOUT GIT MASTER REPO') {
            steps {
                git branch: 'main', credentialsId: '313ea927-c52a-46bd-9bd2-c038ac77803c', url: 'https://github.com/send2durai/aws-ec2-instance-bootstrap.git'
            }
        }
        stage ('EXECUTING LINUX COMMANDS') {
            steps {
                sh '''
                    ls -lah
                    lsblk
                    df -hT
                    sudo yum list installed >> /home/centos/pack.txt
                    ls -ltr /etc/ >> /home/centos/etc-under-folders.txt
                    sleep 5
                    rm -rf /home/centos/india.html
                    sleep 5
                    sudo cat /etc/sysconfig/jenkins  >> /home/centos/jenkins-conf.txt
                    git version
                    sudo systemctl status docker
                    sudo docker version
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
		   docker images >> /home/centos/doc-imag.txt
		   pwd
		   cd /home/centos
		   pwd
		   cat /home/centos/doc-imag.txt
                   docker ps
		   docker run -d --name frontend -p 80:80 436
		   docker run -d --name backend -p 81:80 2f9
		   docker logs -f frontend
		   docker logs -f backend
	           docker container ls -q
                   docker ps 
		   sleep 10
		   echo "_______ docker images and containers are provisioned _______"
		   sleep 6
		   docker container ls -q
		   echo " How to inspect the docker containers using their unique ID"
                   #docker inspect b46 > /home/centos/frontend-cont.txt
                   #docker inspect 58e > /home/centos/backend-cont.txt
                   #sleep 3
                   #docker inspect b46 | grep IPAddress
                   #docker inspect 58e | grep IPAddress
                   sleep 1
                   pwd
                   cd /home/centos
                   pwd
                   ls -ltr
                   cat frontend-cont.txt | grep IPAddress
                   cat backend-cont.txt | grep IPAddress
                   cat simple.sh
		   sleep 2
                   cat pack.txt | grep vim         
                   sleep 3
                   #echo "________ docker images and containers removal _________"
                   #sleep 3
		   #docker stop b46 58e
		   #docker rm b46 58e
		   #docker rmi 2f9 436
		   #sleep 2
		   #docker ps
		   #docker images
                   echo "__________ ENDS THE SCRIPT ________"
                   '''
            }
        }
    }
}
