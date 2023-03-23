pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        
        }
       
    stage('Build Docker images') {
      steps {
        script {
          dockerCompose(
            down: true,
            up: true,
            yaml: 'compose.yml'
          )
        }
      }
    
  }
          
        }
      }
    
        stage('Push Docker Image') {
  steps {
    script {
      docker.withRegistry("https://13.52.76.195:8085", "nexus-credentials") {
        def dockerImage = docker.image("my-image:${env.BUILD_ID}")
        dockerImage.push()
      }
    }
  }
}

