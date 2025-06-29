pipeline {
    agent any
    
    tools {
        jdk 'jdk17'
        maven 'maven3'
    }

    stages {
        stage('Git checkout ') {
            steps {
                checkout scmGit(branches: [[name: '*/start']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/harshalgaikwad25/Bank-App.git']])
            }
        }
}
}
