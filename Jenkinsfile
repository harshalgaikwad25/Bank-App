pipeline {
    agent any

    tools {
        git 'git'
        jdk 'jdk17'
        maven 'maven3'
    }

    stages {
        stage('Git checkout') {
            steps {
                checkout([$class: 'GitSCM',
                    branches: [[name: '*/start']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/harshalgaikwad25/Bank-App.git',
                        credentialsId: 'github-cred'
                    ]]
                ])
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    } // ← this was missing

} // ← this was also missing
