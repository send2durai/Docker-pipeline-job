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
                   # docker pull durai5050/backend:v1
                   # docker pull durai5050/frontend:v1
                   docker images
                   docker ps
		   docker stop b46 58e
                   echo "_________ Containers are stopped ___________"
                   sleep 2
	           echo "_________ Containers are starting ___________"
	           docker start b46 58e
	           docker container ls -q
                   docker ps
                   docker inspect b46 > /home/centos/frontend-cont.txt
                   docker inspect 58e > /home/centos/backend-cont.txt
                   sleep 3
                   docker inspect b46 | grep IPAddress
                   docker inspect 58e | grep IPAddress
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
                   # docker run -d -p 80:80 436
		   # docker run -d -p 81:80 2f9
                   # docker container ls
                   docker container ls -a
                   docker container ls -q
                   docker ps -a
                   echo "________ docker images and containers removal _________"
                   sleep 3
		   docker stop b46 58e
		   docker rm b46 58e
		   docker rmi 2f9 436
		   sleep 2
		   docker ps
		   docker images
                   echo "__________ ENDS THE SCRIPT ________"
                   '''
            }
        }
    }
}
