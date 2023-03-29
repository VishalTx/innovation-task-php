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
                
                def buildNumber = env.BUILD_NUMBER ?: 'latest'
                sh "docker-compose up -d --build --no-deps --remove-orphans --build-arg BUILD_NUMBER=${buildNumber}"
                
                }
            }
        }
    }
