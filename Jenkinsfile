pipeline {
    agent any
    stages {
        stage('Create Tomcat Docker Image'){
            steps{
                sh "docker build . -t learning_log:${env.BUILD_ID}"
            }
        }
    }
}