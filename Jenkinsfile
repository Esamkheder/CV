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
    }
}