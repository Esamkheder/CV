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
                sh 'docker build -t essamkhedr/cv-web:4.0 .'
            }
        }

        stage('Push to Docker Hub'){
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds'
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_TOKEN'
                )]) { 
                    sh '''
                        echo "$DOCKER_TOKEN" | docker login -u "$DOCKER_USERNAME" --password-stdin 
                        docker push essamkhedr/cv-web:4.0 
                        docker logout
                    '''
                }

            }
        }
        stage('Run Docker Container'){
            steps {
                sh 'docker rm -f cv-web-jenkins || true'
                sh 'docker run -d --name cv-web-jenkins -p8081:80 essamkhedr/cv-web:4.0'
            }
        }
    }
}
