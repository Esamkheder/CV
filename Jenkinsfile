
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
                sh 'grep -q "<html" index.html'
                sh 'echo "HTML test passed!"'
            }
        }
    }
}
