pipeline {
agent any
    options {
        buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '3', numToKeepStr: '3'))
        disableConcurrentBuilds()
        timeout(time: 1, unit: 'HOURS')
        timestamps() // Corrected syntax here
    }

    stages {
        stage('Test') {
            steps {
                sh '''
                kubectl 
                pwd
                uname -r 
                touch eric
                '''
            }
        }


        stage('Validate') {
            steps {
                sh 'pwd'
            }
        }

        stage('Scan') {
            steps {
                sh 'pwd'
            }
        }

        stage('Build') {
            steps {
                sh '''
                echo "FROM httpd:2.4" > Dockerfile
                docker build -t eric .
                docker images
                '''
            }
        }

        stage('Push') {
            steps {
                sh 'pwd'
            }
        }



        stage('Deploy') {
            steps {
                sh 'pwd'
            }
        }
    }
}
