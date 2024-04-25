pipeline {
    agent any
    stages {
        stage('Code') { 
            steps {
                sh '''
                echo "this is the fist stage of clonning the code"
                '''
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
        stage('Deploy') { 
            steps {
                sh '''
                echo 'Docker Deploy Stage'
                docker run -p 8090:8080 harun-docker-sample.jar
                '''
            }
        }
    }
}