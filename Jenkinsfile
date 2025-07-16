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
                sh 'docker build -t react-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker rm -f react-container || true
                    docker run -d --name react-container -p 5000:5000 react-app
                '''
            }
        }
    }
}
