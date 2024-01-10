pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Git 저장소에서 코드를 가져옵니다.
                git url: 'https://github.com/jay-gatech/jenkins.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Dockerfile을 사용하여 이미지를 빌드합니다.
                script {
                    def dockerImage = docker.build("my-docker-image")
                }
            }
        }

        stage('Run Container and Execute Script') {
            steps {
                // 빌드한 이미지를 사용하여 컨테이너를 실행하고 Python 스크립트를 실행합니다.
                script {
                    docker.run(image: 'my-docker-image', args: '-v $(pwd):/workspace', command: 'sh -c "cd /workspace && python your-script.py"')
                }
            }
        }

        // 필요한 추가 단계를 여기에 추가할 수 있습니다.
    }
}



