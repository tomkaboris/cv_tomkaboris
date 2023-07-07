pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Build App'
            }
        }
        stage('Test'){
            steps {
                echo 'Test App'
            } 
        }
        stage('Deploy'){
            steps{
                echo 'Deploy App'
            }
        }
    }
    post{
        always{
            emailext body: '''Status: ''', subject: 'Pipline Status', to: 'tomkadell@gmail.com'
        }
    }
}
