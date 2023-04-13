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
                catchError(buildResult: 'Success', stageResult: 'Success'){
                
                sh 'phpcs $(WORKSPACE) --generator=HTML > report.html'
            }
            }
        post {
        always {
            publishHTML(target: [
                allowMissing: false,
                alwaysLinkToLastBuild: false,
                keepAll: true,
                reportDir: '',
                reportFiles: 'report.html',
                reportName: 'PHPCS Report',
                reportTitles: ''
            ])
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



