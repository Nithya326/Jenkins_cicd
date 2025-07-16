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
                sh 'docker build -t static-site .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker rm -f static-site-container-v3 || true
                    docker run -d --name static-site-container-v3 -p 8081:80 static-site
                '''
            }
        }
    }
}
