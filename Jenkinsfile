pipeline{

    agent any 

    stages{

        stage('Git Checkout'){
           
            steps{

                script{
                 
                 git branch: 'main', url: 'https://github.com/Aashima-sharma/innovation-task-php.git'

                }
            }
        }
        stage('Build') {
            steps {
                
              
                sh "docker-compose up -d --build  --build-arg BUILD_NUMBER=${BUILD_NUMBER}"
                
                }
            }
        }
    }
