pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages{

        stage('Build'){
            steps {
                bat 'mvn clean package'
            }
            post {
                success {
                    echo 'WTF...'
                    
                }
            }
        }

        stage('Build Image'){
            steps{
                bat 'docker build -t test/testdocker:latest .'
            }
        }
        stage('Run Container'){
            steps{
                bat 'docker container run -d -p 7080:8080 test/testdocker:latest'
            }
        }
    }
}

