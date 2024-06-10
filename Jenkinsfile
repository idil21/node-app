pipeline {
    agent any
    tools {
        nodejs "22.2.0"
        dockerTool 'Docker'
    }
    

    stages {
        stage('Checkout') {
            steps {
                // Clone the Git repository to the Jenkins workspace
                 git branch: 'main', url: 'https://github.com/idil21/node-app.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                // Install Node.js dependencies using npm
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                script {
                   
                    sh 'docker build -t node-app:latest .'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    
                    sh 'eval $(minikube docker-env)'
                    sh 'docker build -t node-app:latest .'
                    sh 'kubectl apply -f deployment.yaml'
                    sh 'kubectl apply -f service.yaml'
                    

                    
                }
            }
        }
      
    }
        
}
