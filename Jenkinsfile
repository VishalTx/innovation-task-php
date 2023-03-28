@Library('docker') _

pipeline{

    agent any 

    stages{

        stage('Git Checkout'){
           
            steps{

                script{
                 
                 git branch: 'main', url: 'https://github.com/VishalTx/innovation-task-php.git'

                }
            }
        }
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        
        }
    }
