pipeline {
    agent any
    environment {
        JAVA_HOME = '/usr/lib/jvm/java-17-amazon-corretto.x86_64'
        PATH = "${env.JAVA_HOME}/bin:${env.PATH}" 
    }
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
