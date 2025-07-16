pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/your-user/your-repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('your-image-name')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('your-image-name').run('-p 5000:5000')
                }
            }
        }
    }
}
