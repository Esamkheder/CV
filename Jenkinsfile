!#/bin/bash
pipeline {
    agent any

    stages {
        stage('Vheck Files'){
            steps {
                sh 'echo "Cheking CV Projects..."'
                sh 'ls -la'
                sh 'test -f index.html || exit = 1'
                sh 'echo "CV check Passed !"'
            }
        }

        stage('test'){
            steps {
                sh 'echo "Running basic tests...."'
                sh 'grep -q "<html" index.html'
                sh 'echo "html test passed!!!"'
            }
        }
    }
}