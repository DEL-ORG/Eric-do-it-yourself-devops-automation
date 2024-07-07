pipeline {
    agent any

    stages {
        stage('Scan Golang Code') {
            agent {
                docker {
                    image 'golang:1.22.5'
                }
            }
            steps {
                sh '''
                cd do-it-yourself/src/catalog/
                ls -la 
                whoami
                go test
                '''
            }
        }
        stage('Test') {
            steps {
                sh '''
                ls
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
