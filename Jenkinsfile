pipeline {
    agent any 
    stages {
        stage('Git Checkout') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/VishalTx/innovation-task-php-devsecops'
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
                    sh 'cd /home/ubuntu/innovation-task-php-devsecops'
                    sh 'java -jar selenium-server-standalone-3.141.59.jar -role hub -port 6001'
                    sh 'php vendor/bin/phpunit test/test.php'
                }
                }
            }
        }
        }   



