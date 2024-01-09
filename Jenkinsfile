pipeline {
    agent {
        docker { image 'python:3.8' }
    }
    stages {
        stage('Checkout') {
            steps {
                // Git 저장소에서 코드를 가져옵니다.
                git url: 'https://github.com/jay-gatech/jenkins.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                // 필요한 Python 패키지를 설치합니다.
                sh 'python3 -m pip install -r requirements.txt'
                // Python 스크립트를 실행합니다.
                sh 'python3 hello_world.py'
            }
        }
    }
}
