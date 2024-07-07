pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                ls
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
