pipeline {
    agent {
                label ("deploy")
            }

    stages {
        stage('clean up env') {
            steps {
                sh '''
            cd ~/Eric-do-it-yourself-devops-automation 
            docker-compose down --remove-orphans
                '''
            }
        }
        stage('pull images') {
            steps {
                sh '''
            cd ~/Eric-do-it-yourself-devops-automation
            docker-compose pull
                '''
            }
        }
        
        stage('deploy') {
            steps {
                sh '''
            cd ~/Eric-do-it-yourself-devops-automation

            docker-compose up -d  --remove-orphans
                '''
            }
        }
        stage('list container') {
            steps {
                sh '''
            cd ~/Eric-do-it-yourself-devops-automation
            docker-compose ps 
                '''
            }
        }

    }
}