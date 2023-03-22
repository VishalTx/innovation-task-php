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
    }
}
