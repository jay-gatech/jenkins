pipeline {
    agent {
        docker { image 'python:3.8' }
    }
    stages {
        stage('Build') {
            steps {
                sh 'python3 -m pip install -r requirements.txt'
                sh 'python3 hello_world.py'
            }
        }
    }
}
