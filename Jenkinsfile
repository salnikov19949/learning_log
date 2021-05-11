pipeline {
    agent any
    stages {
        stage('Create Docker Image'){
            steps{
                sh "docker build . -t learning_log:${env.BUILD_ID}"
            }
        }    
        stage('Create Docker Container'){
            steps{
                sh "docker container run -p 9095:8080 --name learning_log:${env.BUILD_ID} learning_log:${env.BUILD_ID}"
            }
        }
    }
}