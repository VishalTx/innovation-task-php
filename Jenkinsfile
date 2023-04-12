pipeline {
    agent any 
    stages {
        stage('Git Checkout') {
            steps {
                script {
                    git branch: 'testing', url: 'http://192.168.6.186/root/fullstack-devsecops.git'
                }
            }
        }
  
       stage('PHPCS') {
            steps {
                catchError(buildResult: 'Success', stageResult: 'Success') {
                sh '''
                phpcs /home/testing/fullstack-devsecops
                phpcs --standard=PSR2 --extensions=php --report=summary --report-file=/home/testing/phpcs-output-new /home/testing/fullstack-devsecops '''
            }
        }
       }

        stage('Build') {
            steps {
                sh "docker-compose up -d --build"
            }
          }
        }   
}





