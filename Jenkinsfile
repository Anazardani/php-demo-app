pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/username/php-demo-app.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'composer install'
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh './vendor/bin/phpunit tests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t php-jenkins-app .'
            }
        }

        stage('Deploy with Docker') {
            steps {
                sh 'docker run -d -p 8000:8000 php-jenkins-app'
            }
        }
    }
}