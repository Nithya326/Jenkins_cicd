pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Nithya326/Jenkins_cicd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('react-app')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Clean up old container if it exists
                    sh 'docker rm -f react-container || true'

                    // Run the new container
                    docker.image('react-app').run('-d --name react-container -p 5000:5000')
                }
            }
        }
    }
}
