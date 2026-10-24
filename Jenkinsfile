pipeline {
    agent any

    stages {
        stage('Check Files') {
            steps {
                sh 'echo "Checking CV project..."'
                sh 'test -f index.html'
                sh 'test -f style.css'
                sh 'test -f script.js'
                sh 'echo "All required files exist!"'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Running basic tests..."'
                sh 'grep -qi "<html" index.html'
                sh 'echo "HTML test passed!"'
            }
        }
        stage('Build Docker Image'){
            steps {
                sh 'docker build -t cv-web:4.0 .'
            }
        }
        stage('Run Docker Container'){
            steps {
                sh 'docker rm -f cv-web-jenkins || true'
                sh 'docker run -d --name cv-web-jenkins -p8081:80 cv-web:4.0'
            }
        }
    }
}
