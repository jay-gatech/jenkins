pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Git 저장소에서 코드를 가져옵니다.https://github.com/jay-gatech/
                git url: 'https://github.com/jay-gatech/jenkins.git', branch: 'main'
            }
        }

        stage('Build and Run') {
            steps {
                // Python 스크립트를 실행합니다.
                sh 'python3 hello_world.py'
            }
        }
    }
}
