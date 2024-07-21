pipeline {
    agent {
                label ("deploy")
            }

    stages {
        stage('fetching update') {
            steps {
                sh '''
            rm -rf ~/deployment || true
            git clone git@github.com:DEL-ORG/Eric-do-it-yourself-devops-automation.git ~/deployment
                '''
            }
        }
        stage('clean up env') {
            steps {
                sh '''
            cd ~/deployment 
            docker-compose down --remove-orphans
                '''
            }
        }
        stage('pull images') {
            steps {
                sh '''
            cd ~/deployment
            docker-compose pull
                '''
            }
        }
        
        stage('deploy') {
            steps {
                sh '''
            cd ~/deployment

            docker-compose up -d  --remove-orphans
                '''
            }
        }
        stage('list container') {
            steps {
                sh '''
            cd ~/deployment
            docker-compose ps 
                '''
            }
        }

    }
}