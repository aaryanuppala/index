pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/aaryanuppala/index.git'
            
            }}
            stage('Deploy index.html file') {
                steps {
                    script {
                    sh '''
                    sudo cp -r /var/lib/jenkins/workspace/pipelinewithDocker/index.html /var/www/html/
                    sudo systemctl restart apache2
                    '''
                }  }      }
                stage('Docker build') {
                steps {
                    script {
                    sh '''
                    sudo docker build -t mynginx3:latest .
                    
                    '''
                }  }      }
                
                stage('Docker push') {
                steps {
                    script {
                    sh '''
                    sudo docker tag mynginx3:latest redankaiahu/mynginx:v3
                    sudo docker push  redankaiahu/mynginx:v3
                    
                    '''
                }  }      }
                


}}
