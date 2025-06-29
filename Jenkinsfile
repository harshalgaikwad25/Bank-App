pipeline {
    agent any
    environment {
        JAVA_HOME = "${tool 'jdk17'}"
        PATH = "${JAVA_HOME}/bin:${env.PATH}"
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
                echo "JAVA_HOME is set to: ${env.JAVA_HOME}"
                sh 'export JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto.x86_64'
                sh 'export PATH=$JAVA_HOME/bin:$PATH'
                sh 'mvn clean package'
            }
        }
    } // ← this was missing

} // ← this was also missing
