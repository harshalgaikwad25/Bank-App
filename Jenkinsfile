pipeline {
    agent any
    
    tools {
        jdk 'jdk17'
        maven 'maven3'
    }

    stages {
        stage('Git checkout ') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/start']], userRemoteConfigs: [[url: 'https://github.com/harshalgaikwad25/Bank-App.git', credentialsId: 'github-cred']]])

            }
        }
        stage ('maven build') {
            steps {
                sh 'mvn clean package'
            }
        }
}
}
