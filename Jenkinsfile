pipeline {
    agent any 
    stages {
        stage('Git Checkout') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/VishalTx/innovation-task-php.git'
                }
            }
        }
        stage('Code Analysis') {
            steps {
                
                sh 'phpcs /var/lib/jenkins/workspace/PHP-DevSecOps-Testing --generator=HTML > report.html'
            }
        }
        post {
        always {
            publishHTML(target: [
                allowMissing: false,
                alwaysLinkToLastBuild: false,
                keepAll: true,
                reportDir: '',
                reportFiles: 'index.html',
                reportName: 'PHPCS Report',
                reportTitles: ''
            ])
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



