# Jenkins LTS 오피셜 이미지 사용
FROM jenkins/jenkins:lts

# 'root' 사용자로 전환하여 설치 진행
USER root

# 필요한 패키지 설치 및 Docker 설치
RUN apt-get update && \
    apt-get install -y apt-transport-https \
                       ca-certificates \
                       curl \
                       gnupg2 \
                       software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io

# Docker 그룹에 Jenkins 사용자 추가
RUN usermod -aG docker jenkins

# 다시 'jenkins' 사용자로 전환
USER jenkins

# Jenkins 홈 디렉토리 설정 (선택 사항)
ENV JENKINS_HOME /var/jenkins_home

# Jenkins 포트 설정 (선택 사항)
EXPOSE 8080
