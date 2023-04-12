pipeline {
    agent any 
    stages {
        stage('Git Checkout') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/Shabnam79/innovation-task-php-devsecops'
                }
            }
        }
  
      /* stage('PHPCS') {
            steps {
                catchError(buildResult: 'Success', stageResult: 'Success') {
                sh '''
                phpcs innovation-task-php-devsecops
                phpcs --standard=PSR2 --extensions=php --report=summary --report-file=/home/testing/phpcs-output-new innovation-task-php-devsecops '''
            }
        }
       }*/

        stage('Build') {
            steps {
                sh "docker-compose up -d --build"
            }
          }
        }   
}





