pipeline {
    agent any
    stages {
        stage('Code') { 
            steps {
                sh 'ls -lrt'
            }
        }
        stage('App-Build') { 
            steps {
                echo 'Maven Build Stage'
                sh '''
                mvn clean install
                '''
            }
        }
        stage('DockerBuild') { 
            steps {
                sh '''
                echo 'Docker Build Stage'
                docker build -t harun-docker-sample.jar .
                '''
            }
        }
    }
}