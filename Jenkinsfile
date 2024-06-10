pipeline {
    agent any
    tools {nodejs "22.2.0"}
    

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
                   
                    sh 'docker build -t node-app:$3756c71ed714 .'
                }
            }
        }
        
    }

    post {
        always {
            // Clean up workspace
            cleanWs()
        }
    }
}
