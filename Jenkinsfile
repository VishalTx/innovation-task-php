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
       stage('PHPCS') {
            steps {
                catchError(buildResult: 'Success', stageResult: 'Success') {
                sh '''
                phpcs .
                phpcs --standard=PSR2 --extensions=php --report=summary --report-file=/home/testing/phpcs-output-new innovation-task-php-devsecops '''
            }
        }
       }
        stage('Build') {
            steps {
                sh "docker-compose up -d --build"
            }
          }
        stage('Test') {
            steps {
                script{
                    sh 'java -jar selenium-server-standalone-3.141.59.jar -role hub -port 6001'
                    sh 'php vendor/bin/phpunit test/test.php'
                }
                }
            }
        }
        }   
}


