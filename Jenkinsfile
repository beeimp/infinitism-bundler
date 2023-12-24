pipeline {
    agent any

    // environment {}

    stages{
        stage("Lagacy Remove") {
        steps{
            script {
            try {
                sh "docker rmi -f aa-wallet:latest"
            } catch (err) {
                echo "The image of aa-wallet is not defined"
            }
            }
            script {
            try {
                sh "docker rm -f aa-wallet"
            } catch (err) {
                echo "aa-wallet is not defined"
            }
            }
        }
        }
        stage("Build") {
        steps{
            sh "docker buildx build -t aa-wallet ./"
        }
        }
        stage("RUN") {
        steps {
            sh """docker run -d \
                    --name aa-wallet \
                    -p 3000:3000 \
                    aa-wallet:latest"""
        }
        }
    }
}