pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        
        }
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build("my-image:${env.BUILD_NUMBER}")
                }
            }
        }
        stage('Push Docker Image') {
  steps {
    script {
      docker.withRegistry("13.52.76.195:8085", "nexus-credentials") {
        def dockerImage = docker.image("my-image:${env.BUILD_ID}")
        dockerImage.push()
      }
    }
  }
}
    }
}
